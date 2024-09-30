part of 'package:fuelet_secure_layer/src/di/public/public_register.dart';

// the variable is private in order to limit access from outside of the package
final _privateSecureLayerLocator = GetIt.asNewInstance();

class PrivateSecureLayerRegister {
  static Future<void> init(String sessionsStorageAesPassword) async {
    await commonSecureLayerLocator.allReady();

    final secureStorage = commonSecureLayerLocator.get<FlutterSecureStorage>();

    _privateSecureLayerLocator
      ..registerFactory(() => PrivateKeyRepository(secureStorage))
      ..registerFactory(() => SeedPhraseRepository(secureStorage))
      ..registerSingleton(SessionStorage())
      ..registerFactory(
        () => SessionStoragePasswordManager(
          _privateSecureLayerLocator<SessionStorage>(),
          sessionsStorageAesPassword,
        ),
      )
      ..registerFactory(
        () => EncryptionManager(
          _privateSecureLayerLocator<SessionStoragePasswordManager>(),
        ),
      )
      ..registerSingleton<IAccountsPrivateDataRepository>(
        AccountsPrivateDataRepositoryImpl(
          _privateSecureLayerLocator<PrivateKeyRepository>(),
          _privateSecureLayerLocator<SeedPhraseRepository>(),
          _privateSecureLayerLocator<EncryptionManager>(),
        ),
      )
      ..registerFactory(
        () => WalletUnlockedService(
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
        ),
      );
  }
}
