import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cloud_kit/flutter_cloud_kit.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/core/network/fuel_network_manager.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/infra/account/repository/accounts_private_data_repository_impl.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/cloud_backup_repository_android_impl.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/cloud_backup_repository_ios_impl.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/cloud_backup_repository_web.dart';
import 'package:fuelet_secure_layer/infra/google_api_manager/google_api_manager.dart';
import 'package:fuelet_secure_layer/infra/network/fuel_network_manager_impl.dart';
import 'package:fuelet_secure_layer/infra/network/network_manager.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service.dart';
import 'package:fuelet_secure_layer/presentation/hardware_signer/ui/check_tile.dart';
import 'package:fuelet_secure_layer/presentation/hardware_signer/ui/sensitive_data_widget.dart';
import 'package:fuelet_secure_layer/utils/clipboard.dart';
import 'package:get_it/get_it.dart';
import 'package:secure_enclave/secure_enclave.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uikit/uikit.dart';

// In order to access _privateSecureLayerLocator
part 'package:fuelet_secure_layer/di/private/private_register.dart';
// In order to let SaveSensitiveDataScreen use _privateSecureLayerLocator
part 'package:fuelet_secure_layer/presentation/hardware_signer/ui/save_sensitive_data_screen.dart';
// In order to let ShowSensitiveDataScreen use _privateSecureLayerLocator
part 'package:fuelet_secure_layer/presentation/hardware_signer/ui/show_sensitive_data_screen.dart';

class PublicSecureLayerRegister {
  static Future<void> init() async {
    await commonSecureLayerLocator.allReady();
    await _privateSecureLayerLocator.allReady();

    secureLayerLocator
      ..registerFactory(
          () => TPMServiceIosImpl(commonSecureLayerLocator<SecureEnclave>()))
      ..registerFactory(() => TPMServiceAndroidImpl())
      ..registerFactory(() => TPMServiceWebImpl())
      ..registerLazySingleton<TPMService>(() {
        if (Platform.isIOS) {
          return secureLayerLocator<TPMServiceIosImpl>();
        }
        if (Platform.isAndroid) {
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
      ..registerFactory(
        () => WalletUnlockedService(
          secureLayerLocator<IAccountsLocalRepository>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
        ),
      )
      ..registerLazySingleton(
          () => FlutterCloudKit(containerId: 'iCloud.fueletSecretBackups'))
      ..registerFactory(() => GoogleApiManager())
      ..registerFactory(
        () => CloudBackupRepositoryAndroidImpl(
          secureLayerLocator<GoogleApiManager>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
        ),
      )
      ..registerFactory(
        () => CloudBackupRepositoryIOSImpl(
          secureLayerLocator<FlutterCloudKit>(),
          _privateSecureLayerLocator<IAccountsPrivateDataRepository>(),
        ),
      )
      ..registerFactory(() => CloudBackupRepositoryWebImpl())
      ..registerLazySingleton(
        () {
          if (Platform.isIOS) {
            return secureLayerLocator<CloudBackupRepositoryIOSImpl>();
          } else if (Platform.isAndroid) {
            return secureLayerLocator<CloudBackupRepositoryAndroidImpl>();
          } else {
            return secureLayerLocator<CloudBackupRepositoryWebImpl>();
          }
        },
      )
      ..registerFactory(() => SecureLayerSharedPrefsManager(
          commonSecureLayerLocator<SharedPrefsRawManager>()))
      ..registerFactory(() =>
          NetworkManager(secureLayerLocator<SecureLayerSharedPrefsManager>()))
      ..registerFactory<FuelNetworkManager>(
          () => FuelNetworkManagerImpl(secureLayerLocator<NetworkManager>()))
      ..registerFactory(
        () => WalletImportBloc(
            secureLayerLocator<IWalletCreateRepository>(),
            secureLayerLocator<NetworkManager>()
                as FuelNetworkProviderRepository),
      );
  }
}
