import 'package:chrome_extension/storage.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/platform_impl/base_session_storage.dart';

class SessionStorageImpl extends IBaseSessionStorage {
  @override
  Future<String?> get(String key) async {
    final values = await chrome.storage.session.get(key);
    return values[key];
  }

  @override
  Future<void> set(String key, String value) {
    return chrome.storage.session.set({key: value});
  }

  @override
  Future<void> remove(String key) async {
    return chrome.storage.session.remove(key);
  }
}
