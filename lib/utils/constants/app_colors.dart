// // ignore_for_file: avoid_hardcoded_colors
// import 'package:flutter/material.dart';
// import 'package:money_management_app/utils/constants/colors.dart';
//
// import '../../app.dart';
// import 'app_colors.dart';
// import 'tailwind_color.dart';
//
// class AppColors {
//   const AppColors({
//     required this.primaryColor,
//     required this.secondaryColor,
//     required this.primaryTextColor,
//     required this.secondaryTextColor,
//     required this.primaryGradient,
//     required this.primaryBackgroundColor,
//     required this.subTitleTextColor,
//     required this.textFieldHintTextColor,
//     required this.borderPrimaryColor,
//     required this.textOnPrimaryButtonColor,
//     required this.disableButtonColor,
//     required this.secondaryButtonColor,
//     required this.secondaryButtonBgColor,
//     required this.parentCategoryBorderColor,
//     required this.floatingActionButtonBgColor,
//     required this.searchTextFieldComponentColor,
//     required this.categoryItemArrowRightButton,
//     required this.commonSearchTextFieldBgColor,
//     required this.cardNotificationUnreadColor,
//     required this.iconNotificationUnreadColor,
//     required this.cardNotificationReadColor,
//     required this.iconNotificationReadColor,
//     required this.paddingIconNotificationReadColor,
//     required this.paddingIconNotificationUnreadColor,
//   });
//
//   static late AppColors current;
//
//   final Color primaryColor;
//   final Color secondaryColor;
//   final Color primaryTextColor;
//   final Color secondaryTextColor;
//   final Color primaryBackgroundColor;
//   final Color subTitleTextColor;
//   final Color textFieldHintTextColor;
//   final Color borderPrimaryColor;
//   final Color textOnPrimaryButtonColor;
//   final Color secondaryButtonColor;
//   final Color secondaryButtonBgColor;
//   final Color disableButtonColor;
//   final Color parentCategoryBorderColor;
//   final Color floatingActionButtonBgColor;
//   final Color searchTextFieldComponentColor;
//   final Color categoryItemArrowRightButton;
//   final Color commonSearchTextFieldBgColor;
//   final Color cardNotificationUnreadColor;
//   final Color cardNotificationReadColor;
//   final Color iconNotificationUnreadColor;
//   final Color iconNotificationReadColor;
//   final Color paddingIconNotificationReadColor;
//   final Color paddingIconNotificationUnreadColor;
//
//   static final PrimaryColor _primaryColor = PrimaryColor();
//
//   static final TailwindColor _neutral = TailwindColor({
//     '50': '#fafafa',
//     '100': '#f5f5f5',
//     '200': '#e5e5e5',
//     '300': '#d4d4d4',
//     '400': '#a3a3a3',
//     '500': '#737373',
//     '600': '#525252',
//     '700': '#404040',
//     '800': '#262626',
//     '900': '#171717',
//     '950': '#0a0a0a',
//   });
//
//   static final TailwindColor _yellow = TailwindColor({
//     '50': '#fefce8',
//     '100': '#fef9c3',
//     '200': '#fef08a',
//     '300': '#fde047',
//     '400': '#facc15',
//     '500': '#eab308',
//     '600': '#ca8a04',
//     '700': '#a16207',
//     '800': '#854d0e',
//     '900': '#713f12',
//     '950': '#422006',
//   });
//
//   static final TailwindColor _purple = TailwindColor({
//     '50': '#faf5ff',
//     '100': '#f3e8ff',
//     '200': '#e9d5ff',
//     '300': '#d8b4fe',
//     '400': '#c084fc',
//     '500': '#a855f7',
//     '600': '#9333ea',
//     '700': '#7e22ce',
//     '800': '#6b21a8',
//     '900': '#581c87',
//     '950': '#3b0764',
//   });
//
//   static final TailwindColor _red = TailwindColor({
//     '50': '#fef2f2',
//     '100': '#fee2e2',
//     '200': '#fecaca',
//     '300': '#fca5a5',
//     '400': '#f87171',
//     '500': '#ef4444',
//     '600': '#dc2626',
//     '700': '#b91c1c',
//     '800': '#991b1b',
//     '900': '#7f1d1d',
//     '950': '#450a0a',
//   });
//
//   static final TailwindColor _green = TailwindColor({
//     '50': '#f0fdf4',
//     '100': '#dcfce7',
//     '200': '#bbf7d0',
//     '300': '#86efac',
//     '400': '#4ade80',
//     '500': '#22c55e',
//     '600': '#16a34a',
//     '700': '#15803d',
//     '800': '#166534',
//     '900': '#14532d',
//     '950': '#052e16',
//   });
//
//   static const Color _whiteGeneric = Color(0xFFFFFFFF);
//
//   static const Color _blackGeneric = Color(0xFF000000);
//
//   /// Get Color
//
//   Color get successColor => _green.shade500;
//
//   Color get errorColor => _red.shade500;
//
//   Color get requiredColor => _red.shade500;
//
//   Color get warningColor => _yellow.shade500;
//
//   Color get activeBottomBarColor => _orange.shade500;
//
//   Color get deactivateBottomBarColor => _neutral.shade400;
//
//   Color get activeBottomBarContentColor => _whiteGeneric;
//
//   Color get shadowColor => _blackGeneric.withOpacity(0.08);
//
//   Color get bottomNavShadowColor => _blackGeneric.withOpacity(0.12);
//
//   Color get bottomSheetShadowColor => _blackGeneric.withOpacity(0.12);
//
//   Color get bottomSheetBarrierColor => _blackGeneric.withOpacity(0);
//
//   Color get whiteIcon => _whiteGeneric;
//
//   LinearGradient get loginHeaderGradient => LinearGradient(
//         colors: [
//           _blackGeneric,
//           _blackGeneric.withOpacity(0),
//         ],
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//       );
//
//   /// gradient
//   final LinearGradient primaryGradient;
//
//   final Color screenBackgroundColor = const Color(0xffF8F8F8);
//   final Color buttonSignOutColor = const Color(0xFFFFF4F1);
//   final Color borderButtonSignOutColor = const Color(0xFFFFA999);
//   final Color bgButtonConfirmColor = const Color(0xFFF5F5F5);
//   final Color textButtonCloseColor = const Color(0xFF262626);
//   final Color bgButtonRoyalColor = const Color(0xFFFEEAD6);
//   final Color titleButtonRoyalColor = const Color(0xFFF26B25);
//
//   final Color buttonDeactivatedColor = const Color(0xffC6C6C6);
//   final Color buttonActivatedPrimaryColor = const Color(0xffF26522);
//   final Color buttonBackgroundColor = const Color(0xffF8F8F8);
//   final Color buttonTextColor = const Color.fromRGBO(255, 255, 255, 1);
//   final Color buttonCancelTextColor = const Color.fromRGBO(248, 248, 248, 1);
//   final Color buttonSplashColor = const Color.fromRGBO(0, 0, 0, 1);
//
//   final Color cursorPrimaryColor = const Color.fromRGBO(242, 101, 34, 1);
//
//   final Color borderErrorColor = const Color.fromRGBO(218, 43, 45, 1);
//   final Color textFieldBorderColor = const Color.fromRGBO(236, 236, 236, 1);
//
//   Color get borderActivatedColor => _neutral.shade200;
//
//   final Color textFieldRequiredColor = const Color.fromRGBO(242, 72, 64, 1);
//   final Color textFieldTitleColor = const Color.fromRGBO(44, 44, 44, 1);
//   final Color textFieldFillColor = const Color.fromRGBO(236, 236, 236, 1);
//   final Color textFieldSuffixIconColor = const Color.fromRGBO(176, 176, 176, 1);
//
//   final Color backgroundColor = const Color.fromRGBO(0, 0, 0, 1);
//   final Color bottomSheetBackgroundColor = const Color.fromRGBO(248, 248, 248, 1);
//   final Color bottomSheetHeaderBackgroundColor = const Color.fromRGBO(176, 176, 176, 1);
//   final Color bottomSheetBoxShadowColor = const Color.fromRGBO(236, 236, 236, 1);
//
//   static final defaultAppColor = AppColors(
//     primaryColor: _blue.shade500,
//     secondaryColor: _orange.shade500,
//     primaryTextColor: _neutral.shade800,
//     secondaryTextColor: _neutral.shade500,
//     primaryBackgroundColor: _whiteGeneric,
//     subTitleTextColor: _neutral.shade600,
//     textFieldHintTextColor: _neutral.shade600,
//     borderPrimaryColor: _neutral.shade200,
//     textOnPrimaryButtonColor: _whiteGeneric,
//     disableButtonColor: _neutral.shade300,
//     secondaryButtonColor: _neutral.shade100,
//     secondaryButtonBgColor: _neutral.shade50,
//     parentCategoryBorderColor: _neutral.shade500,
//     floatingActionButtonBgColor: _orange.shade100,
//     searchTextFieldComponentColor: _neutral.shade500,
//     categoryItemArrowRightButton: _neutral.shade400,
//     commonSearchTextFieldBgColor: _neutral.shade100,
//     primaryGradient: const LinearGradient(colors: [Color(0xff25B872), Color(0xffF3A187), Color(0xff5647FF)]),
//     cardNotificationUnreadColor: _blue.shade50,
//     cardNotificationReadColor: _whiteGeneric,
//     iconNotificationUnreadColor: _blue.shade500,
//     iconNotificationReadColor: _neutral.shade400,
//     paddingIconNotificationReadColor: _neutral.shade100,
//     paddingIconNotificationUnreadColor: _whiteGeneric,
//   );
//
//   static final darkThemeColor = AppColors(
//     primaryColor: PrimaryColor.baseDarkMode,
//     secondaryColor: _orange.shade500,
//     primaryTextColor: _purple.shade600,
//     secondaryTextColor: _purple.shade100,
//     primaryBackgroundColor: _blackGeneric,
//     subTitleTextColor: _purple.shade600,
//     textFieldHintTextColor: _purple.shade400,
//     borderPrimaryColor: _neutral.shade200,
//     textOnPrimaryButtonColor: _whiteGeneric,
//     disableButtonColor: _neutral.shade300,
//     secondaryButtonBgColor: _neutral.shade50,
//     secondaryButtonColor: _neutral.shade100,
//     parentCategoryBorderColor: _neutral.shade500,
//     floatingActionButtonBgColor: _orange.shade100,
//     searchTextFieldComponentColor: _neutral.shade500,
//     categoryItemArrowRightButton: _neutral.shade400,
//     commonSearchTextFieldBgColor: _neutral.shade100,
//     primaryGradient: const LinearGradient(colors: [Color(0xff25B872), Color(0xffF3A187), Color(0xff5647FF)]),
//     cardNotificationUnreadColor: _blue.shade50,
//     iconNotificationUnreadColor: _blue.shade500,
//     cardNotificationReadColor: _whiteGeneric,
//     iconNotificationReadColor: _neutral.shade400,
//     paddingIconNotificationReadColor: _neutral.shade100,
//     paddingIconNotificationUnreadColor: _whiteGeneric,
//   );
//
//   static AppColors of(BuildContext context) {
//     final appColor = Theme.of(context).appColor;
//
//     current = appColor;
//
//     return current;
//   }
//
// /*  AppColors copyWith(
//       {Color? primaryColor,
//       Color? secondaryColor,
//       Color? primaryTextColor,
//       Color? secondaryTextColor,
//       Color? primaryBackgroundColor,
//       Color? subTitleTextColor,
//       Color? textFieldHintTextColor,
//       Color? borderPrimaryColor,
//       Color? textOnPrimaryButtonColor,
//       Color? disableButtonColor,
//       Color? secondaryButtonBgColor,
//       Color? secondaryButtonColor,
//       LinearGradient? primaryGradient}) {
//     return AppColors(
//       primaryColor: primaryColor ?? this.primaryColor,
//       secondaryColor: secondaryColor ?? this.secondaryColor,
//       primaryTextColor: primaryTextColor ?? this.primaryTextColor,
//       secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
//       primaryGradient: primaryGradient ?? this.primaryGradient,
//       primaryBackgroundColor: primaryBackgroundColor ?? this.primaryBackgroundColor,
//       subTitleTextColor: subTitleTextColor ?? this.subTitleTextColor,
//       textFieldHintTextColor: textFieldHintTextColor ?? this.textFieldHintTextColor,
//       borderPrimaryColor: borderPrimaryColor ?? this.borderPrimaryColor,
//       textOnPrimaryButtonColor: textOnPrimaryButtonColor ?? this.textOnPrimaryButtonColor,
//       disableButtonColor: disableButtonColor ?? this.disableButtonColor,
//       secondaryButtonBgColor: secondaryButtonBgColor ?? this.secondaryButtonBgColor,
//       secondaryButtonColor: secondaryButtonColor ?? this.secondaryButtonColor,
//     );
//   }*/
// }
