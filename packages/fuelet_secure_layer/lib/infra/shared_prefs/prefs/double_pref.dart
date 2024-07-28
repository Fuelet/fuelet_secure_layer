import 'package:fuelet_secure_layer/infra/shared_prefs/raw_manager.dart';
import 'package:fuelet_secure_layer/infra/shared_prefs/shared_pref.dart';

class DoublePref extends SharedPref<double> {
  DoublePref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getDouble,
          sharedPreferences.setDouble,
        );
}
