import 'package:flutter/material.dart';
import 'appThemes.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeMode = AppThemes.darkTheme;

  bool isDarkMode() {
    return _themeMode == AppThemes.darkTheme;
  }

  void toogleTheme(bool status) {
    _themeMode = status ? AppThemes.darkTheme : AppThemes.lightTheme;
    notifyListeners();
  }

  ThemeData getThemeData() {
    return _themeMode == AppThemes.darkTheme
        ? AppThemes.darkTheme
        : AppThemes.lightTheme;
  }
}
