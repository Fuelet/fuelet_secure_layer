import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/wallet_import/application/validators.dart';
import 'package:fuelet_secure_layer/src/utils/account_utils.dart';
import 'package:fuelet_secure_layer/src/utils/either_x.dart';
import 'package:fuelet_secure_layer/src/utils/iterable_x.dart';

part 'wallet_import_bloc.freezed.dart';

part 'wallet_import_event.dart';

part 'wallet_import_state.dart';

const dAccountsPerPage = 10;

class WalletImportBloc extends Bloc<WalletImportEvent, WalletImportState> {
  final IWalletCreateRepository _walletCreateRepository;
  final FuelNetworkProviderRepository _fuelNetworkProviderRepository;
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;

  WalletImportBloc(
    this._walletCreateRepository,
    this._fuelNetworkProviderRepository,
    this._accountsPrivateDataRepository,
  ) : super(const WalletImportState.initial()) {
    on<WalletImportEvent>(
      (event, emit) => event.map(
        importWalletByPrivateKey: (event) =>
            _onImportWalletByPrivateKey(event, emit),
        importMultipleWallets: (event) => _onImportMultipleWallets(event, emit),
        watchWallet: (event) => _onWatchWallet(event, emit),
        importWalletsFromSeed: (event) => _onImportWalletsFromSeed(event, emit),
        deriveWalletsFromSameSeed: (event) =>
            _onDeriveWalletsFromSameSeed(event, emit),
        loadMoreDerivative: (event) => _onLoadMoreDerivative(event, emit),
        reset: (event) => _onReset(event, emit),
        readyToImport: (event) => _onReadyToImport(event, emit),
      ),
    );
  }

  void _onReset(
    _Reset event,
    Emitter<WalletImportState> emit,
  ) {
    emit(const WalletImportState.initial());
  }

  void _onReadyToImport(
    _SaveAccountsToImport event,
    Emitter<WalletImportState> emit,
  ) {
    emit(WalletImportState.readyToImport(event.accounts));
  }

  void _onLoadMoreDerivative(
    _LoadMoreDerivative event,
    Emitter<WalletImportState> emit,
  ) async {
    final dAccounts = state.derivativeAccounts ?? [];
    emit(
      WalletImportState.inDAImportProcess(
        dAccounts,
        event.selected,
        event.balances,
      ),
    );
    final WalletsImportResponse response =
        await _walletCreateRepository.importDerivativeAccountsWithMnemonic(
      event.seedPhrase,
      count: dAccountsPerPage,
      fromIndex: dAccounts.length,
      currentNetworkUrl: _fuelNetworkProviderRepository.currentNetwork,
    );

    response.fold(
      (l) {
        emit(
          WalletImportState.importingDAFailed(
            dAccounts,
            event.selected,
            event.balances,
          ),
        );
      },
      (r) {
        final result = dAccounts.isNotEmpty ? dAccounts + r : r;
        emit(
          WalletImportState.loadedMore(
            result,
            event.selected,
            event.balances,
            event.seedPhrase,
          ),
        );
      },
    );
  }

  Future<void> _onImportWalletsFromSeed(
    _ImportWalletsFromSeed event,
    Emitter<WalletImportState> emit,
  ) async {
    if (state is! _InDAImportProcess) {
      emit(const WalletImportState.inDAImportProcess([], {}, {}));
    }

    final isValid = SeedPhraseValidator.validate(event.seedPhrase);
    if (!isValid) {
      emit(
        const WalletImportState.importingFailed(
          WalletImportFailure.validationFailed(),
        ),
      );
      return;
    }

    final WalletsImportResponse response =
        await _walletCreateRepository.importDerivativeAccountsWithMnemonic(
      event.seedPhrase,
      count: dAccountsPerPage,
      fromIndex: 0,
      currentNetworkUrl: _fuelNetworkProviderRepository.currentNetwork,
    );
    response.fold(
      (l) => emit(WalletImportState.importingFailed(l)),
      (accounts) => emit(
        WalletImportState.importedMultipleDerivativeWallets(
          accounts,
          {},
          {},
          event.seedPhrase,
        ),
      ),
    );
  }

  Future<void> _onDeriveWalletsFromSameSeed(
    _DeriveWalletsFromSameSeed event,
    Emitter<WalletImportState> emit,
  ) async {
    emit(const WalletImportState.inDAImportProcess([], {}, {}));
    final privateData = await _accountsPrivateDataRepository
        .getAccountPrivateData(event.deriveFrom.bech32Address);
    final seedPhrase = privateData?.seedPhrase;
    if (seedPhrase == null) {
      emit(const WalletImportState.importingFailed(
          WalletImportFailure.invalidSeedPhrase()));
    } else {
      add(WalletImportEvent.importWalletsFromSeed(seedPhrase,
          existingAccounts: event.existingAccounts));
    }
  }

  Future<void> _onImportWalletByPrivateKey(
    _ImportWallet event,
    Emitter<WalletImportState> emit,
  ) async {
    emit(const WalletImportState.inProcess());
    if (event.privateKey.isEmpty) {
      emit(
        const WalletImportState.importingFailed(
          WalletImportFailure.privateKeyValidationFailed(),
        ),
      );
      return;
    }

    final Either<WalletImportFailure, Account> response =
        await _walletCreateRepository.importAccountWithPrivateKey(
      event.privateKey,
      addingMethod: AccountAddingMethod.importWithPrivateKey,
      currentNetworkUrl: _fuelNetworkProviderRepository.currentNetwork,
    );

    final failure = response.asLeft();
    if (failure != null) {
      return emit(WalletImportState.importingFailed(failure));
    }

    final acc = response.asRight();
    if (acc != null) {
      Account account =
          acc.copyWith(name: AccountUtils.generateName(event.existingAccounts));

      final existingAccount =
          _findExistingAccount(event.existingAccounts, account);

      if (existingAccount != null) {
        if (existingAccount.isOwner) {
          emit(
            const WalletImportState.importingFailed(
              WalletImportFailure.accountAlreadyAdded(),
            ),
          );
          return;
        } else {
          account = account.copyWith(
            name: existingAccount.name,
            walletGroup: WalletGroup.myWallets,
          );
        }
      }
      emit(WalletImportState.imported(account));
    }
  }

  Future<void> _onImportMultipleWallets(
    _ImportMultipleWallets event,
    Emitter<WalletImportState> emit,
  ) async {
    emit(const WalletImportState.inProcess());

    List<Account> existingAccounts = [...event.existingAccounts];
    List<Account> importedAccounts = [];

    for (var seedPhraseOrPivateKey in event.values) {
      final importType = seedPhraseOrPivateKey.contains(' ')
          ? WalletImportType.withSeedPhrase
          : WalletImportType.withPrivateKey;

      if (seedPhraseOrPivateKey.isEmpty ||
          importType == WalletImportType.withSeedPhrase &&
              !SeedPhraseValidator.validate(seedPhraseOrPivateKey)) {
        continue;
      }

      final Either<WalletImportFailure, Account> response;
      if (importType == WalletImportType.withSeedPhrase) {
        response = await _walletCreateRepository.importAccountWithMnemonic(
          seedPhraseOrPivateKey,
          addingMethod: AccountAddingMethod.importMultipleWallets,
          currentNetworkUrl: _fuelNetworkProviderRepository.currentNetwork,
        );
      } else {
        response = await _walletCreateRepository.importAccountWithPrivateKey(
          seedPhraseOrPivateKey,
          addingMethod: AccountAddingMethod.importMultipleWallets,
          currentNetworkUrl: _fuelNetworkProviderRepository.currentNetwork,
        );
      }

      final acc = response.asRight();
      if (acc != null) {
        Account account =
            acc.copyWith(name: AccountUtils.generateName(existingAccounts));

        final existingAccount = _findExistingAccount(existingAccounts, account);

        if (existingAccount != null) {
          if (existingAccount.isOwner) {
            // Account is already imported
            continue;
          } else {
            // Account is already added as Track Account, in this case just recreating same account as normal(not track) and deleting old (track) account
            account = account.copyWith(
              name: existingAccount.name,
              walletGroup: WalletGroup.myWallets,
            );

            existingAccounts = existingAccounts
                .where((a) =>
                    a.fuelAddress.bech32Address.toLowerCase() !=
                    existingAccount.fuelAddress.bech32Address.toLowerCase())
                .toList();

            emit(
              WalletImportState.needsToDeleteTrackAccount(existingAccount),
            );
          }
        }

        importedAccounts.add(account);
        existingAccounts.add(account);
      }
    }
    if (importedAccounts.isNotEmpty) {
      if (event.creatingAfterSettingPasscode) {
        emit(WalletImportState.importedMultipleWalletsWithSetPasscode(
          importedAccounts,
        ));
      } else {
        emit(WalletImportState.importedMultipleWallets(importedAccounts));
      }
    }
  }

  Future<void> _onWatchWallet(
    _WatchWallet event,
    Emitter<WalletImportState> emit,
  ) async {
    emit(const WalletImportState.inProcess());

    final Either<WalletImportFailure, Account> response;

    final bech32Address = FuelWalletAddressConverter.isBech32(event.address)
        ? event.address
        : FuelWalletAddressConverter.bech32StringFromB256String(event.address);

    response = await _walletCreateRepository.watchAccount(
      name: event.name,
      bech32Address: bech32Address,
      walletGroup: event.walletGroup,
      addingMethod: AccountAddingMethod.importWithTrackWallet,
    );

    final account = response.asRight();
    if (account != null) {
      final existingAccount =
          _findExistingAccount(event.existingAccounts, account);
      if (existingAccount != null) {
        // Account already added, just going to update state with failure
        emit(
          const WalletImportState.importingFailed(
            WalletImportFailure.accountAlreadyAdded(),
          ),
        );
        return;
      }

      emit(WalletImportState.imported(account));
    }

    final failure = response.asLeft();
    if (failure != null) {
      emit(WalletImportState.importingFailed(failure));
    }
  }

  Account? _findExistingAccount(
      List<Account> existingAccounts, Account newAccount) {
    return existingAccounts.firstWhereOrNull((e) =>
        e.fuelAddress.bech32Address.toLowerCase() ==
        newAccount.fuelAddress.bech32Address.toLowerCase());
  }
}
