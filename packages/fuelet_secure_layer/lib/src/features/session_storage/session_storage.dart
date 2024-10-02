import 'platform_impl/stub_session_storage_impl.dart'
    if (dart.library.io) 'platform_impl/mobile_session_storage_impl.dart'
    if (dart.library.html) 'platform_impl/web_session_storage_impl.dart';

class SessionStorage {
  final _storage = SessionStorageImpl();

  Future<String?> get(String key) {
    return _storage.get(key);
  }

  Future<void> set(String key, String value) {
    return _storage.set(key, value);
  }

  Future<void> remove(String key) {
    return _storage.remove(key);
  }
}
