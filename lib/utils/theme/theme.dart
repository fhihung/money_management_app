import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_management_app/utils/utils.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    disabledColor: AppColors.grey,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: CommonTextTheme.lightTextTheme,
    chipTheme: CommonChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: CommonAppBarTheme.lightAppBarTheme,
    checkboxTheme: CommonCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CommonBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CommonElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: CommonOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CommonTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    textTheme: CommonTextTheme.darkTextTheme,
    chipTheme: CommonChipTheme.darkChipTheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: CommonAppBarTheme.darkAppBarTheme,
    checkboxTheme: CommonCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CommonBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CommonElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: CommonOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CommonTextFormFieldTheme.darkInputDecorationTheme,
  );
}
