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
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightThemeColors.backgroundWhite2DarkVersion,
    ),
    scaffoldBackgroundColor: AppColors.lightThemeColors.backgroundWhite2DarkVersion,
    checkboxTheme: CommonCheckboxTheme.lightCheckboxTheme,
    inputDecorationTheme: CommonTextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.buttonLg,
        ),
        foregroundColor: AppColors.lightThemeColors.textWhite,
        backgroundColor: AppColors.lightThemeColors.backgroundPrimary,
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
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.lightThemeColors.textBlackDarkVersion,
      ),
    ),
    fontFamily: GoogleFonts.archivo().fontFamily,
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    extensions: {
      AppColors.lightThemeColors,
      AppButtons.defaultButtons,
    },
  );

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkThemeColors.backgroundWhite2DarkVersion,
    ),
    scaffoldBackgroundColor: AppColors.darkThemeColors.backgroundWhite2DarkVersion,
    checkboxTheme: CommonCheckboxTheme.darkCheckboxTheme,
    inputDecorationTheme: CommonTextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.buttonLg,
        ),
        foregroundColor: AppColors.darkThemeColors.textWhite,
        backgroundColor: AppColors.darkThemeColors.backgroundPrimary,
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
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.darkThemeColors.textBlackDarkVersion,
      ),
    ),
    fontFamily: GoogleFonts.archivo().fontFamily,
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    extensions: {
      AppColors.darkThemeColors,
      AppButtons.defaultButtons,
    },
  );
}
