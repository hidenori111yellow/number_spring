import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
  static final ball = ['ball1','ball2','ball3','ball4','ball5','ball6','ball7','ball8','ball9','ball10','ball11','ball12','ball13','ball14','ball15',];
  
  static SharedPreferences _sharedPreferences;
  
  static Future setInstance() async {
    if (null != _sharedPreferences) return;

    _sharedPreferences = await SharedPreferences.getInstance();
  }
  
  static Future<bool> setBall(int number,bool value) => _sharedPreferences.setBool(ball[number-1], value);
  static bool getBall(int number) => _sharedPreferences.getBool(ball[number-1]) ?? true;
}