import 'package:fuelet_secure_layer/infra/shared_prefs/raw_manager.dart';
import 'package:fuelet_secure_layer/infra/shared_prefs/shared_pref.dart';
import 'package:fuelet_secure_layer/utils/kotlin_object_x.dart';

class JsonPref<T> extends SharedPref<T> {
  JsonPref(
    String key,
    SharedPrefsRawManager sharedPreferences,
    Map<String, dynamic> Function(T) toJson,
    T Function(Map<String, dynamic>) fromJson,
  ) : super(
          key,
          sharedPreferences,
          (key) => sharedPreferences.getJson(key)?.let(fromJson),
          (key, value) => sharedPreferences.setJson(key, toJson(value)),
        );
}
