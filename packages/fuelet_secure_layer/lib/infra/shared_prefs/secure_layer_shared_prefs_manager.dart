import 'package:fuelet_secure_layer/core/network/entity/blockchain_network_dto.dart';
import 'package:fuelet_secure_layer/infra/shared_prefs/prefs/json_pref.dart';
import 'package:fuelet_secure_layer/infra/shared_prefs/prefs/pref.dart';
import 'package:fuelet_secure_layer/infra/shared_prefs/raw_manager.dart';

class SecureLayerPrefsKeys {
  static const selectedNetwork = 'selectedNetwork';

  SecureLayerPrefsKeys._();
}

class SecureLayerSharedPrefsManager {
  final Pref<BlockchainNetworkDto> selectedNetwork;

  SecureLayerSharedPrefsManager(SharedPrefsRawManager sharedPreferences)
      : selectedNetwork = JsonPref<BlockchainNetworkDto>(
          SecureLayerPrefsKeys.selectedNetwork,
          sharedPreferences,
          (dto) => dto.toJson(),
          (json) => BlockchainNetworkDto.fromJson(json),
        );
}
