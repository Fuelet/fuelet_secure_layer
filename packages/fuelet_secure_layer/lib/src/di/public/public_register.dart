import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cloud_kit/flutter_cloud_kit.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/di/common/common_locator.dart';
import 'package:fuelet_secure_layer/src/di/public/public_locator.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_local_repository_impl.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository_impl.dart';
import 'package:fuelet_secure_layer/src/features/cloud_backup/repository/cloud_backup_repository_android_impl.dart';
import 'package:fuelet_secure_layer/src/features/cloud_backup/repository/cloud_backup_repository_ios_impl.dart';
import 'package:fuelet_secure_layer/src/features/cloud_backup/repository/cloud_backup_repository_web_impl.dart';
import 'package:fuelet_secure_layer/src/features/encryption/encryption_manager.dart';
import 'package:fuelet_secure_layer/src/features/google_api/manager/google_api_manager.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/check_tile.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/l10n_save_sensitive_data_screen.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/l10n_show_sensitive_data_screen.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/sensitive_data_type.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/sensitive_data_widget.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/repository/hardware_signer_repository.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/service/wallet_connect_service.dart';
import 'package:fuelet_secure_layer/src/features/network/manager/fuel_network_manager.dart';
import 'package:fuelet_secure_layer/src/features/network/manager/fuel_network_manager_impl.dart';
import 'package:fuelet_secure_layer/src/features/network/manager/network_manager.dart';
import 'package:fuelet_secure_layer/src/features/password/password_manager.dart';
import 'package:fuelet_secure_layer/src/features/private_data/private_key/repository/private_key_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/seed_phrase/presentation/seed_phrase_widget.dart';
import 'package:fuelet_secure_layer/src/features/private_data/seed_phrase/repository/seed_phrase_repository.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/session_storage.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/session_storage_password_manager.dart';
import 'package:fuelet_secure_layer/src/features/shared_prefs/raw_manager.dart';
import 'package:fuelet_secure_layer/src/features/shared_prefs/secure_layer_shared_prefs_manager.dart';
import 'package:fuelet_secure_layer/src/features/tpm_service/tpm_service.dart';
import 'package:fuelet_secure_layer/src/features/tpm_service/tpm_service_impl/tpm_android_impl.dart';
import 'package:fuelet_secure_layer/src/features/tpm_service/tpm_service_impl/tpm_ios_impl.dart';
import 'package:fuelet_secure_layer/src/features/tpm_service/tpm_service_impl/tpm_web_impl.dart';
import 'package:fuelet_secure_layer/src/features/transaction/manager/transaction_manager.dart';
import 'package:fuelet_secure_layer/src/features/wallet_create/repository/wallet_create_repository.dart';
import 'package:fuelet_secure_layer/src/features/wallet_create/repository/wallet_create_repository_impl.dart';
import 'package:fuelet_secure_layer/src/features/wallet_import/application/wallet_import_bloc.dart';
import 'package:fuelet_secure_layer/src/features/wallet_unlocked/wallet_unlocked_service.dart';
import 'package:fuelet_secure_layer/src/utils/clipboard.dart';
import 'package:fuelet_uikit/fuelet_uikit.dart';
import 'package:get_it/get_it.dart';
import 'package:secure_enclave/secure_enclave.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/account/entity/address.dart';

// In order to access _privateSecureLayerLocator
part 'package:fuelet_secure_layer/src/di/private/private_register.dart';
// In order to let SaveSensitiveDataScreen use _privateSecureLayerLocator
part 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/save_sensitive_data_screen.dart';
// In order to let ShowSensitiveDataScreen use _privateSecureLayerLocator
part 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/show_sensitive_data_screen.dart';

class PublicSecureLayerRegister {
  static Future<void> init(String cloudBackupAesPassword) async {
    await commonSecureLayerLocator.allReady();
    await _privateSecureLayerLocator.allReady();

    secureLayerLocator
      ..registerFactory(
          () => TPMServiceIosImpl(commonSecureLayerLocator<SecureEnclave>()))
      ..registerFactory(() => TPMServiceAndroidImpl())
      ..registerFactory(() => TPMServiceWebImpl())
      ..registerLazySingleton<TPMService>(() {
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return secureLayerLocator<TPMServiceIosImpl>();
        }
        if (defaultTargetPlatform == TargetPlatform.android) {
          return secureLayerLocator<TPMServiceAndroidImpl>();
        }

        return secureLayerLocator<TPMServiceWebImpl>();
      })
      ..registerSingleton<IAccountsLocalRepository>(
        AccountsLocalRepositoryImpl(
          commonSecureLayerLocator.get<SharedPreferences>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
        )..init(),
      )
      ..registerSingleton(
        HardwareSignerRepository(
          secureLayerLocator<IAccountsLocalRepository>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
          secureLayerLocator<TPMService>(),
        ),
      )
      ..registerFactory<IWalletCreateRepository>(
        () => WalletCreateRepositoryImpl(
          secureLayerLocator<IAccountsLocalRepository>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
          secureLayerLocator<HardwareSignerRepository>(),
        ),
      )
      ..registerFactory(
        () => WalletConnectService(
          secureLayerLocator<IAccountsLocalRepository>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
          secureLayerLocator<HardwareSignerRepository>(),
        ),
      )
      ..registerLazySingleton(
          () => FlutterCloudKit(containerId: 'iCloud.fueletSecretBackups'))
      ..registerFactory(() => GoogleApiManager())
      ..registerFactory(
        () => CloudBackupRepositoryAndroidImpl(
          secureLayerLocator<GoogleApiManager>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
          cloudBackupAesPassword,
        ),
      )
      ..registerFactory(
        () => CloudBackupRepositoryIOSImpl(
          secureLayerLocator<FlutterCloudKit>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
          cloudBackupAesPassword,
        ),
      )
      ..registerFactory(() => CloudBackupRepositoryWebImpl())
      ..registerLazySingleton(
        () {
          if (defaultTargetPlatform == TargetPlatform.iOS) {
            return secureLayerLocator<CloudBackupRepositoryIOSImpl>();
          } else if (defaultTargetPlatform == TargetPlatform.android) {
            return secureLayerLocator<CloudBackupRepositoryAndroidImpl>();
          }
          return secureLayerLocator<CloudBackupRepositoryWebImpl>();
        },
      )
      ..registerFactory(() => SecureLayerSharedPrefsManager(
          commonSecureLayerLocator<SharedPrefsRawManager>()))
      ..registerFactory(() =>
          NetworkManager(secureLayerLocator<SecureLayerSharedPrefsManager>()))
      ..registerFactoryAsync<FuelNetworkManager>(() async =>
          FuelNetworkManagerImpl(secureLayerLocator<NetworkManager>())..init())
      ..registerFactoryAsync(
        () async => WalletImportBloc(
          secureLayerLocator<IWalletCreateRepository>(),
          await secureLayerLocator.getAsync<FuelNetworkManager>(),
        ),
      )
      ..registerFactoryAsync(
        () async => TransactionManager(
          await secureLayerLocator.getAsync<FuelNetworkManager>(),
          _privateSecureLayerLocator<WalletUnlockedService>(),
          secureLayerLocator<IAccountsLocalRepository>(),
        ),
      )
      ..registerFactory(
        () => PasswordManager(
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
          commonSecureLayerLocator<FlutterSecureStorage>(),
          _privateSecureLayerLocator<SessionStoragePasswordManager>(),
        ),
      );
  }
}
