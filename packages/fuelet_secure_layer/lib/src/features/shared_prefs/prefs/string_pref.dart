import 'package:fuelet_secure_layer/src/features/shared_prefs/raw_manager.dart';
import 'package:fuelet_secure_layer/src/features/shared_prefs/shared_pref.dart';

class StringPref extends SharedPref<String> {
  StringPref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getString,
          sharedPreferences.setString,
        );
}
