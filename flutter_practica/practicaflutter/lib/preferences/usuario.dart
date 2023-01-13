import 'package:shared_preferences/shared_preferences.dart';

class Usuario {
  static late SharedPreferences _prefs;

  static String _nom = 'antonio marmol crespillo';
  static String caducidad = '12/25';
  static String tarjeta = '3213213123131232132';
  static String CVV = '321';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get nom {
    return _prefs.getString('nom') ?? _nom;
  }

  static set nom(String value) {
    _nom = value;
    _prefs.setString('nom', value);
  }

  static String get iscaducidad {
    return _prefs.getString('caducidad') ?? caducidad;
  }

  static set iscaducidad(String value) {
    caducidad = value;
    _prefs.setString('caducidad', value);
  }

  static String get isCVV {
    return _prefs.getString('CVV') ?? CVV;
  }

  static set isCVV(String value) {
    CVV = value;
    _prefs.setString('CVV', value);
  }

  static String get istarjeta {
    return _prefs.getString('tarjeta') ?? tarjeta;
  }

  static set istarjeta(String value) {
    tarjeta = value;
    _prefs.setString('tarjeta', value);
  }
}
