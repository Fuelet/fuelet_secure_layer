abstract class IBaseSessionStorage {
  Future<String?> get(String key);

  Future<void> set(String key, String value);

  Future<void> remove(String key);
}
