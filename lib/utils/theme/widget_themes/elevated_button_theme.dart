import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';

/* -- Light & Dark Elevated Button Themes -- */
class CommonElevatedButtonTheme {
  CommonElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      iconColor: AppColors.current.textWhite,
      foregroundColor: AppColors.current.textWhite,
      backgroundColor: AppColors.current.backgroundPrimary,
      disabledForegroundColor: AppColors.current.textGray4,
      disabledBackgroundColor: AppColors.current.textGray6,
      disabledIconColor: AppColors.current.textGray4,
      side: BorderSide(color: AppColors.current.backgroundPrimary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppSizes.buttonRadius,
        ),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      iconColor: AppColors.current.textWhite,
      foregroundColor: AppColors.current.textWhite,
      backgroundColor: AppColors.current.backgroundPrimary,
      disabledForegroundColor: AppColors.current.textGray4,
      disabledBackgroundColor: AppColors.current.textGray6,
      disabledIconColor: AppColors.current.textGray4,
      side: BorderSide(color: AppColors.current.backgroundPrimary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: TextStyle(
        fontSize: 16,
        color: AppColors.current.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppSizes.buttonRadius,
        ),
      ),
    ),
  );
}
