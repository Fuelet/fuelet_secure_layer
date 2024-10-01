import 'package:fuelet_secure_layer/src/features/session_storage/platform_impl/base_session_storage.dart';

class SessionStorageImpl extends IBaseSessionStorage {
  final Map<String, String> _storage = {};

  @override
  Future<String?> get(String key) async {
    return _storage[key];
  }

  @override
  Future<void> set(String key, String value) async {
    _storage[key] = value;
  }

  @override
  Future<void> remove(String key) async {
    _storage.remove(key);
  }
}
