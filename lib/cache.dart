import 'package:shared_preferences/shared_preferences.dart';

class Cache{
  static late SharedPreferences pref;

  static void init() async{
    pref = await SharedPreferences.getInstance();
  }

  static void saveMode(bool value){
    pref.setBool("mode", value);
  }

  static bool? getMode(){
    return pref.getBool("mode");
  }

}