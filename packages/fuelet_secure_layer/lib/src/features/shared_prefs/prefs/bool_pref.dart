import 'package:fuelet_secure_layer/src/features/shared_prefs/raw_manager.dart';
import 'package:fuelet_secure_layer/src/features/shared_prefs/shared_pref.dart';

class BoolPref extends SharedPref<bool> {
  BoolPref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getBool,
          sharedPreferences.setBool,
        );
}
