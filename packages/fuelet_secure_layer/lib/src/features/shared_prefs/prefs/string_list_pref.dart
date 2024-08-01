import 'package:fuelet_secure_layer/src/features/shared_prefs/raw_manager.dart';
import 'package:fuelet_secure_layer/src/features/shared_prefs/shared_pref.dart';

class StringListPref extends SharedPref<List<String>> {
  StringListPref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getStringList,
          sharedPreferences.setStringList,
        );
}
