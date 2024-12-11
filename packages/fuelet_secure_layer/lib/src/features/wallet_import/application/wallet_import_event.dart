part of 'wallet_import_bloc.dart';

@freezed
class WalletImportEvent with _$WalletImportEvent {
  const factory WalletImportEvent.importWalletByPrivateKey(
    String privateKey, {
    required List<Account> existingAccounts,
    required bool creatingAfterSettingPasscode,
  }) = _ImportWallet;

  const factory WalletImportEvent.readyToImport({
    required List<Account> accounts,
  }) = _SaveAccountsToImport;

  const factory WalletImportEvent.loadMoreDerivative({
    required Set<int> selected,
    required Map<String, List<TokenBalance>> balances,
    required String seedPhrase,
  }) = _LoadMoreDerivative;

  const factory WalletImportEvent.importWalletsFromSeed(
    String seedPhrase, {
    required List<Account> existingAccounts,
  }) = _ImportWalletsFromSeed;

  const factory WalletImportEvent.deriveWalletsFromSameSeed({
    required AccountAddress deriveFrom,
    required List<Account> existingAccounts,
  }) = _DeriveWalletsFromSameSeed;

  const factory WalletImportEvent.importMultipleWallets(
    List<String> values, {
    required List<Account> existingAccounts,
    required bool creatingAfterSettingPasscode,
  }) = _ImportMultipleWallets;

  const factory WalletImportEvent.watchWallet({
    required String name,
    required String address,
    required WalletGroup walletGroup,
    required List<Account> existingAccounts,
  }) = _WatchWallet;

  const factory WalletImportEvent.reset() = _Reset;
}
