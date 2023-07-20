import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setPhone(String key,String value)
  async{
    return sharedPreferences!.setString(key, value);
  }

  static String? getPhone(String key)
  {
    return sharedPreferences!.getString(key);
  }

}
