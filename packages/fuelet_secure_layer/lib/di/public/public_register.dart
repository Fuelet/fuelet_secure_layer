import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cloud_kit/flutter_cloud_kit.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/core/account/entity/address.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/core/wallet_create/repository/wallet_create_repository.dart';
import 'package:fuelet_secure_layer/di/common/common_locator.dart';
import 'package:fuelet_secure_layer/di/public/export.dart';
import 'package:fuelet_secure_layer/di/public/public_locator.dart';
import 'package:fuelet_secure_layer/infra/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/infra/account/repository/accounts_private_data_repository_impl.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/cloud_backup_repository_android_impl.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/cloud_backup_repository_ios_impl.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/cloud_backup_repository_web.dart';
import 'package:fuelet_secure_layer/infra/data/repository/private_key_repository.dart';
import 'package:fuelet_secure_layer/infra/data/repository/seed_phrase_repository.dart';
import 'package:fuelet_secure_layer/infra/google_api_manager/google_api_manager.dart';
import 'package:fuelet_secure_layer/infra/hardware_signer/repository/hardware_signer_repository.dart';
import 'package:fuelet_secure_layer/infra/hardware_signer/service/wallet_connect_service.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_impl/tpm_android_impl.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_impl/tpm_ios_impl.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_impl/tpm_web_impl.dart';
import 'package:fuelet_secure_layer/infra/wallet_create/repository/wallet_create_repository_impl.dart';
import 'package:fuelet_secure_layer/infra/wallet_unlocked/wallet_unlocked_service.dart';
import 'package:fuelet_secure_layer/presentation/hardware_signer/ui/check_tile.dart';
import 'package:fuelet_secure_layer/presentation/hardware_signer/ui/l10n_save_sensitive_data_screen.dart';
import 'package:fuelet_secure_layer/presentation/hardware_signer/ui/sensitive_data_widget.dart';
import 'package:fuelet_secure_layer/presentation/seed_phrase/seed_phrase_widget.dart';
import 'package:fuelet_secure_layer/utils/clipboard.dart';
import 'package:get_it/get_it.dart';
import 'package:secure_enclave/secure_enclave.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uikit/uikit.dart';

// In order to access _privateSecureLayerLocator
part 'package:fuelet_secure_layer/di/private/private_register.dart';
// In order to let SaveSensitiveDataScreen use _privateSecureLayerLocator
part 'package:fuelet_secure_layer/presentation/hardware_signer/ui/save_sensitive_data_screen.dart';

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
            secureLayerLocator<GoogleApiManager>()),
      )
      ..registerFactory(() =>
          CloudBackupRepositoryIOSImpl(secureLayerLocator<FlutterCloudKit>()))
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
      );
  }
}
