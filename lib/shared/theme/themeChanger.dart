import 'appThemes.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  bool isDarkMode() {
    return _themeMode == ThemeMode.dark;
  }

  void toogleTheme(bool status) {
    _themeMode = status ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void setTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  ThemeData getThemeData() {
    return _themeMode == ThemeMode.dark
        ? AppThemes.darkTheme
        : AppThemes.lightTheme;
  }
}
