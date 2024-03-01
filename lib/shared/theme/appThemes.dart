import 'package:bookspell/shared/constants/appColors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.lightBlack,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      hintColor: AppColors.lightWhite,
      dividerColor: Colors.black12);

  static final lightTheme = ThemeData(
    primaryColor: AppColors.lightWhite,
    scaffoldBackgroundColor: AppColors.lightWhite,
    brightness: Brightness.light,
    hintColor: AppColors.textBlack,
    dividerColor: Colors.white54,
  );
}
