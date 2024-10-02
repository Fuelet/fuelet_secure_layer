import 'package:fuelet_secure_layer/src/features/session_storage/platform_impl/base_session_storage.dart';

class SessionStorageImpl extends IBaseSessionStorage {
  @override
  Future<String?> get(String key) {
    throw Exception('Stub implementation');
  }

  @override
  Future<void> set(String key, String value) {
    throw Exception('Stub implementation');
  }

  @override
  Future<void> remove(String key) {
    throw Exception('Stub implementation');
  }
}
