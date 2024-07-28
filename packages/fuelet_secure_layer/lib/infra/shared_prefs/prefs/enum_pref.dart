import 'package:fuelet_secure_layer/infra/shared_prefs/raw_manager.dart';
import 'package:fuelet_secure_layer/infra/shared_prefs/shared_pref.dart';

class EnumPref<T> extends SharedPref<T> {
  EnumPref(
    String key,
    SharedPrefsRawManager sharedPreferences,
    Iterable<T> values,
  ) : super(
          key,
          sharedPreferences,
          (key) => sharedPreferences.getEnum(values, key),
          sharedPreferences.setEnum,
        );
}
