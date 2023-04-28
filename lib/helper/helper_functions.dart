import 'package:shared_preferences/shared_preferences.dart';

class helperFunctions {
  static String userLoggedInKey = "loggedinKey";
  static String userNameKey = "usernameKey";
  static String userEmailKey = "emailKey";

  static Future<bool?> getUserStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.getBool(userLoggedInKey);
  }
}
