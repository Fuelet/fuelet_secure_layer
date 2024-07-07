import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/core/wallet_create/repository/wallet_create_repository.dart';
import 'package:fuelet_secure_layer/di/common/common_locator.dart';
import 'package:fuelet_secure_layer/di/public/public_locator.dart';
import 'package:fuelet_secure_layer/infra/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/infra/account/repository/accounts_private_data_repository_impl.dart';
import 'package:fuelet_secure_layer/infra/data/repository/private_key_repository.dart';
import 'package:fuelet_secure_layer/infra/data/repository/seed_phrase_repository.dart';
import 'package:fuelet_secure_layer/infra/hardware_signer/repository/hardware_signer_repository.dart';
import 'package:fuelet_secure_layer/infra/hardware_signer/service/wallet_connect_service.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_impl/tpm_android_impl.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_impl/tpm_ios_impl.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_impl/tpm_web_impl.dart';
import 'package:fuelet_secure_layer/infra/wallet_create/repository/wallet_create_repository_impl.dart';
import 'package:fuelet_secure_layer/infra/wallet_unlocked/wallet_unlocked_service.dart';
import 'package:get_it/get_it.dart';
import 'package:secure_enclave/secure_enclave.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'package:fuelet_secure_layer/di/private/private_register.dart';

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
      );
  }
}
