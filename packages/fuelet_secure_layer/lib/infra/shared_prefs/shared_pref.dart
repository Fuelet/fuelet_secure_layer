import 'package:fuelet_secure_layer/infra/shared_prefs/prefs/pref.dart';
import 'package:fuelet_secure_layer/infra/shared_prefs/raw_manager.dart';
import 'package:rxdart/rxdart.dart';

abstract class SharedPref<T> extends Pref<T> {
  late final _subject = BehaviorSubject<T?>.seeded(get());
  final String key;
  final SharedPrefsRawManager sharedPreferences;
  final T? Function(String key) getPref;
  final Future<void> Function(String key, T value) setPref;

  SharedPref(
    this.key,
    this.sharedPreferences,
    this.getPref,
    this.setPref,
  );

  @override
  Stream<T?> get stream => _subject.stream;

  @override
  T? get() => getPref(key);

  @override
  Future<void> set(T? value) async {
    _subject.add(value);
    if (value == null) {
      await sharedPreferences.removeKey(key);
    } else {
      await setPref(key, value);
    }
  }
}
