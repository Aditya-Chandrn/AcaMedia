import 'package:shared_preferences/shared_preferences.dart';

class helperFunctions {
  static String userLoggedInKey = "loggedinKey";
  static String userNameKey = "usernameKey";
  static String userEmailKey = "emailKey";

  static Future<bool> saveLoginStatus(bool loginStatus) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, loginStatus);
  }

  static Future<bool> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saveEmailSF(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmail);
  }

  static Future<bool?> getUserStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
}
