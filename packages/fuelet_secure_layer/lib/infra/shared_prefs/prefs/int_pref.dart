import 'package:fuelet_secure_layer/infra/shared_prefs/raw_manager.dart';
import 'package:fuelet_secure_layer/infra/shared_prefs/shared_pref.dart';

class IntPref extends SharedPref<int> {
  IntPref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getInt,
          sharedPreferences.setInt,
        );
}
