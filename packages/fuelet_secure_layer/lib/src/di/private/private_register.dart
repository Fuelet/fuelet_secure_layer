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

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      _privateSecureLayerLocator.registerFactory<BiometryAuthProvider>(
        () => IOSBiometricAuthProvider(
          commonSecureLayerLocator<SecureEnclave>(),
          secureStorage,
        ),
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      _privateSecureLayerLocator.registerFactory<BiometryAuthProvider>(
        () => AndroidBiometricAuthProvider(secureStorage),
      );
    } else {
      _privateSecureLayerLocator.registerFactory<BiometryAuthProvider>(
        () => WebBiometricAuthProvider(),
      );
    }
  }
}
