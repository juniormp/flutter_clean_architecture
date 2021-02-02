import 'package:shared_preferences/shared_preferences.dart';
import 'interfaces/local_storage.dart';

class SharedLocalStorage implements ILocalStorage {
  @override
  Future delete(String key) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.remove(key);
  }

  @override
  Future gets(String key) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(key);
  }

  @override
  Future put(String key, value) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    if (value is bool) {
      sharedPreferences.setBool(key, value);
    }
  }
}
