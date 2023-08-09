import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static SPaddString(String name, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(name, value);
  }

  static Future<String> SPgetString(String name) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(name) ?? "";
  }
}
