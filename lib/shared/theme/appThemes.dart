import '/shared/constants/appColors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: AppColors.lightBlack,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: AppColors.lightBlack,
    accentColor: AppColors.lightWhite,
    accentIconTheme: IconThemeData(color: AppColors.lightBlack),
    dividerColor: Colors.black12,
  );

  static final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: AppColors.lightWhite,
    scaffoldBackgroundColor: AppColors.lightWhite,
    brightness: Brightness.light,
    backgroundColor: AppColors.lightWhite,
    accentColor: AppColors.textBlack,
    accentIconTheme: IconThemeData(color: AppColors.lightWhite),
    dividerColor: Colors.white54,
  );
}
