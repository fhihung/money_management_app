import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_management_app/utils/utils.dart';

/// define custom themes here
final lightTheme = ThemeData(
  // elevatedButtonTheme: CommonElevatedButtonTheme.lightElevatedButtonTheme,
  fontFamily: GoogleFonts.archivo().fontFamily,
  scaffoldBackgroundColor: AppColors.current.backgroundWhite2DarkVersion,
  brightness: Brightness.light,
  splashColor: Colors.transparent,
)..addAppColor(
    CommonThemes.light,
    AppColors.lightThemeColor,
  );

final darkTheme = ThemeData(
  // elevatedButtonTheme: CommonElevatedButtonTheme.darkElevatedButtonTheme,
  fontFamily: GoogleFonts.archivo().fontFamily,
  scaffoldBackgroundColor: AppColors.current.backgroundWhite2DarkVersion,
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
)..addAppColor(
    CommonThemes.dark,
    AppColors.darkThemeColor,
  );

extension ThemeDataExtensions on ThemeData {
  static final Map<CommonThemes, AppColors> _appColorMap = {};

  void addAppColor(CommonThemes type, AppColors appColor) {
    _appColorMap[type] = appColor;
  }

  AppColors get appColor {
    return _appColorMap[AppThemeSetting.currentCommonThemes] ?? AppColors.lightThemeColor;
  }
}

class AppThemeSetting {
  const AppThemeSetting._();
  static CommonThemes currentCommonThemes = CommonThemes.light;
}
