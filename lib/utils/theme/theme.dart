// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:money_management_app/utils/theme/app_colors.dart';
//
//
// class CommonTheme {
//   CommonTheme({
//     required this.context,
//   }
// }),
// final BuildContext context;
//
//   final appColors = Theme.of(context).extension<AppColors>()!;
//
//   // define custom themes here
//   final lightTheme = ThemeData(
//     fontFamily: GoogleFonts.archivo().fontFamily,
//     scaffoldBackgroundColor: appColors.backgroundWhite,
//     brightness: Brightness.light,
//     splashColor: Colors.transparent,
//     extensions: {
//       AppColors.lightThemeColors,
//     },
//   );
//
//   final darkTheme = ThemeData(
//     fontFamily: GoogleFonts.archivo().fontFamily,
//     brightness: Brightness.dark,
//     splashColor: Colors.transparent,
//     extensions: {
//       AppColors.darkThemeColors,
//     },
//   );
// }
//
//
//

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_management_app/utils/theme/app_buttons.dart';
import 'package:money_management_app/utils/utils.dart';

abstract final class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    checkboxTheme: CommonCheckboxTheme.lightCheckboxTheme,
    inputDecorationTheme: CommonTextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(360),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(360),
        ),
      ),
    ),
    fontFamily: GoogleFonts.archivo().fontFamily,
    scaffoldBackgroundColor: AppColors.defaultAppColors.backgroundWhite2DarkVersion,
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    extensions: {
      AppColors.lightThemeColors,
      AppTextStyles.defaultTextStyles,
      AppButtons.defaultButtons,
    },
  );

  static final ThemeData darkTheme = ThemeData(
    checkboxTheme: CommonCheckboxTheme.darkCheckboxTheme,
    inputDecorationTheme: CommonTextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(360),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(360),
        ),
      ),
    ),
    scaffoldBackgroundColor: AppColors.darkThemeColors.backgroundWhite2DarkVersion,
    fontFamily: GoogleFonts.archivo().fontFamily,
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    extensions: {
      AppColors.darkThemeColors,
      AppTextStyles.defaultTextStyles,
      AppButtons.defaultButtons,
    },
  );
}
