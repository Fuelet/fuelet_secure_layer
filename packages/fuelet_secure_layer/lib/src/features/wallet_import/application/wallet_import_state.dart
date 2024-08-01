part of 'wallet_import_bloc.dart';

@freezed
class WalletImportState with _$WalletImportState {
  const WalletImportState._();

  const factory WalletImportState.initial() = _Initial;

  const factory WalletImportState.accountsToImport(
    List<Account> accounts,
  ) = _AccountsToImport;

  const factory WalletImportState.readyToImport(
    List<Account> accounts,
  ) = _ReadyToImport;

  const factory WalletImportState.inProcess() = _InProcess;

  const factory WalletImportState.inDAImportProcess(
    List<Account> accounts,
    Set<int> selected,
    Map<String, List<TokenBalance>> balances,
  ) = _InDAImportProcess;

  const factory WalletImportState.loadedMore(
    List<Account> accounts,
    Set<int> selected,
    Map<String, List<TokenBalance>> balances,
    String seedPhrase,
  ) = _InLoadMoreProcess;

  const factory WalletImportState.imported(Account account) = _Imported;

  const factory WalletImportState.importedMultipleWallets(
    List<Account> accounts,
  ) = _ImportedMultipleWallets;

  const factory WalletImportState.importedMultipleDerivativeWallets(
    List<Account> accounts,
    Set<int> selected,
    Map<String, List<TokenBalance>> balances,
    String seedPhrase,
  ) = _ImportedMultipleDerivativeWallets;

  const factory WalletImportState.importedMultipleWalletsWithSetPasscode(
    List<Account> accounts,
  ) = _ImportedMultipleWalletsWithSetPasscode;

  const factory WalletImportState.importedWithSetPasscode(Account account) =
      _ImportedWithSetPasscode;

  const factory WalletImportState.needsToDeleteTrackAccount(Account account) =
      _NeedsToDeleteWatchAccount;

  const factory WalletImportState.importingFailed(WalletImportFailure failure) =
      ImportingFailed;

  const factory WalletImportState.importingDAFailed(
    List<Account> accounts,
    Set<int> selected,
    Map<String, List<TokenBalance>> balances,
  ) = _ImportingDAFailed;

  List<Account>? get derivativeAccounts => maybeMap(
        orElse: () => null,
        importedMultipleDerivativeWallets: (da) => da.accounts,
        importingDAFailed: (da) => da.accounts,
        loadedMore: (da) => da.accounts,
      );

  String? get seed => maybeMap(
        orElse: () => null,
        importedMultipleDerivativeWallets: (da) => da.seedPhrase,
        loadedMore: (da) => da.seedPhrase,
      );

  bool get inProcess => maybeMap(
        inProcess: (_) => true,
        inDAImportProcess: (_) => true,
        orElse: () => false,
      );

  bool get isFirstPage => maybeMap(
        importedMultipleDerivativeWallets: (_) => true,
        orElse: () => false,
      );

  bool get isImportingDAFailed => maybeMap(
        importingDAFailed: (_) => true,
        orElse: () => false,
      );
}
