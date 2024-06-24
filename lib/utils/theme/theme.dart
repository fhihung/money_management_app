import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_management_app/utils/constants/common_colors.dart';
import 'package:money_management_app/utils/utils.dart';

/// define custom themes here
final lightTheme = ThemeData(
  fontFamily: GoogleFonts.archivo().fontFamily,
  scaffoldBackgroundColor: CommonColors.current.backgroundWhite,
  brightness: Brightness.light,
  splashColor: Colors.transparent,
)..addAppColor(
    CommonThemes.light,
    CommonColors.lightThemeColor,
  );

final darkTheme = ThemeData(
  fontFamily: GoogleFonts.archivo().fontFamily,
  scaffoldBackgroundColor: CommonColors.current.backgroundWhite,
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
)..addAppColor(
    CommonThemes.dark,
    CommonColors.darkThemeColor,
  );

extension ThemeDataExtensions on ThemeData {
  static final Map<CommonThemes, CommonColors> _appColorMap = {};

  void addAppColor(CommonThemes type, CommonColors appColor) {
    _appColorMap[type] = appColor;
  }

  CommonColors get appColor {
    return _appColorMap[AppThemeSetting.currentCommonThemes] ?? CommonColors.lightThemeColor;
  }
}

class AppThemeSetting {
  const AppThemeSetting._();
  static CommonThemes currentCommonThemes = CommonThemes.light;
}
