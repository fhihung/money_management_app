import 'package:flutter/material.dart';
import 'package:money_management_app/utils/constants/colors.dart';
import 'package:money_management_app/utils/theme/theme.dart';

class CommonColors {
  const CommonColors({
    required this.textBlackDarkVersion,
    required this.textBlack,
    required this.textGray,
    required this.textGray1,
    required this.textGray2,
    required this.textGray3,
    required this.textGray4,
    required this.textGray5,
    required this.textGray5_2,
    required this.textGray6,
    required this.textGray7,
    required this.textGray8,
    required this.textWhite,
    required this.textWhite2DarkVersion,
    required this.textRed,
    required this.textGreen,
    required this.textPrimary,
    required this.textPrimaryLight2,
    required this.backgroundDarkVersion,
    required this.background2,
    required this.backgroundGray,
    required this.backgroundGray1,
    required this.backgroundGray2,
    required this.backgroundGray3,
    required this.backgroundGray4,
    required this.backgroundGray5,
    required this.backgroundGray6,
    required this.backgroundGray6_2,
    required this.backgroundGray7,
    required this.backgroundGray7_2,
    required this.backgroundGray8,
    required this.backgroundWhite,
    required this.backgroundWhite2DarkVersion,
    required this.backgroundRed,
    required this.backgroundRed1,
    required this.backgroundRed2,
    required this.backgroundRed3,
    required this.backgroundGreen,
    required this.backgroundGreen1,
    required this.backgroundGreen2,
    required this.backgroundGreen3,
    required this.backgroundOrange,
    required this.backgroundOrange1,
    required this.backgroundOrange2,
    required this.backgroundOrange3,
    required this.backgroundPrimary,
    required this.backgroundPrimaryDark1,
    required this.backgroundPrimaryDark2,
    required this.backgroundPrimaryDark3,
    required this.backgroundPrimaryLight1,
    required this.backgroundPrimaryLight2,
    required this.backgroundPrimaryLight2DarkVersion,
    required this.backgroundPrimaryLight3,
    required this.backgroundPrimaryLight4,
    required this.backgroundPrimaryLight5,
    required this.backgroundPrimaryLight6,
    required this.backgroundPrimaryLight7,
    required this.backgroundPrimaryLight8,
    required this.backgroundPrimaryLight8_2,
    required this.backgroundSecondary,
    required this.backgroundSecondary1,
    required this.backgroundSecondary2,
    required this.backgroundSecondary3,
    required this.backgroundSecondary4,
    required this.backgroundSecondary5,
    required this.backgroundSecondary6,
    required this.border1,
    required this.border2,
    required this.border3,
    required this.border4,
    required this.border5,
    required this.border6,
    required this.border7,
    required this.border8,
    required this.border9,
    required this.border10,
    required this.borderRed,
    required this.borderGreen,
    required this.borderPrimary,
    required this.borderPrimaryLight6,
    required this.borderPrimaryDark,
    required this.divider1,
    required this.divider2,
    required this.divider3,
  });

  static late CommonColors current;

  final Color textBlackDarkVersion;
  final Color textBlack;
  final Color textGray;
  final Color textGray1;
  final Color textGray2;
  final Color textGray3;
  final Color textGray4;
  final Color textGray5;
  final Color textGray5_2;
  final Color textGray6;
  final Color textGray7;
  final Color textGray8;
  final Color textWhite;
  final Color textWhite2DarkVersion;
  final Color textRed;
  final Color textGreen;
  final Color textPrimary;
  final Color textPrimaryLight2;
  final Color backgroundDarkVersion;
  final Color background2;
  final Color backgroundGray;
  final Color backgroundGray1;
  final Color backgroundGray2;
  final Color backgroundGray3;
  final Color backgroundGray4;
  final Color backgroundGray5;
  final Color backgroundGray6;
  final Color backgroundGray6_2;
  final Color backgroundGray7;
  final Color backgroundGray7_2;
  final Color backgroundGray8;
  final Color backgroundWhite;
  final Color backgroundWhite2DarkVersion;
  final Color backgroundRed;
  final Color backgroundRed1;
  final Color backgroundRed2;
  final Color backgroundRed3;
  final Color backgroundGreen;
  final Color backgroundGreen1;
  final Color backgroundGreen2;
  final Color backgroundGreen3;
  final Color backgroundOrange;
  final Color backgroundOrange1;
  final Color backgroundOrange2;
  final Color backgroundOrange3;
  final Color backgroundPrimary;
  final Color backgroundPrimaryDark1;
  final Color backgroundPrimaryDark2;
  final Color backgroundPrimaryDark3;
  final Color backgroundPrimaryLight1;
  final Color backgroundPrimaryLight2;
  final Color backgroundPrimaryLight2DarkVersion;
  final Color backgroundPrimaryLight3;
  final Color backgroundPrimaryLight4;
  final Color backgroundPrimaryLight5;
  final Color backgroundPrimaryLight6;
  final Color backgroundPrimaryLight7;
  final Color backgroundPrimaryLight8;
  final Color backgroundPrimaryLight8_2;
  final Color backgroundSecondary;
  final Color backgroundSecondary1;
  final Color backgroundSecondary2;
  final Color backgroundSecondary3;
  final Color backgroundSecondary4;
  final Color backgroundSecondary5;
  final Color backgroundSecondary6;
  final Color border1;
  final Color border2;
  final Color border3;
  final Color border4;
  final Color border5;
  final Color border6;
  final Color border7;
  final Color border8;
  final Color border9;
  final Color border10;
  final Color borderRed;
  final Color borderGreen;
  final Color borderPrimary;
  final Color borderPrimaryLight6;
  final Color borderPrimaryDark;
  final Color divider1;
  final Color divider2;
  final Color divider3;

  static const lightThemeColor = CommonColors(
    textBlackDarkVersion: NeutralColors.black,
    textBlack: NeutralColors.black,
    textGray: NeutralColors.gray,
    textGray1: NeutralColors.gray1,
    textGray2: NeutralColors.gray2,
    textGray3: NeutralColors.gray3,
    textGray4: NeutralColors.gray4,
    textGray5: NeutralColors.gray5,
    textGray5_2: NeutralColors.gray5,
    textGray6: NeutralColors.gray6,
    textGray7: NeutralColors.gray7,
    textGray8: NeutralColors.gray8,
    textWhite: NeutralColors.white,
    textWhite2DarkVersion: NeutralColors.white,
    textRed: SemanticColors.redLightMode,
    textGreen: SemanticColors.greenLightMode,
    textPrimary: PrimaryColors.baseLightMode,
    textPrimaryLight2: PrimaryColors.light2LightMode,
    backgroundDarkVersion: NeutralColors.black,
    background2: NeutralColors.black,
    backgroundGray: NeutralColors.gray,
    backgroundGray1: NeutralColors.gray1,
    backgroundGray2: NeutralColors.gray2,
    backgroundGray3: NeutralColors.gray3,
    backgroundGray4: NeutralColors.gray4,
    backgroundGray5: NeutralColors.gray5,
    backgroundGray6: NeutralColors.gray6,
    backgroundGray6_2: NeutralColors.gray6,
    backgroundGray7: NeutralColors.gray7,
    backgroundGray7_2: NeutralColors.gray7,
    backgroundGray8: NeutralColors.gray8,
    backgroundWhite: NeutralColors.white,
    backgroundWhite2DarkVersion: NeutralColors.white,
    backgroundRed: SemanticColors.redLightMode,
    backgroundRed1: SemanticColors.red1LightMode,
    backgroundRed2: SemanticColors.red2LightMode,
    backgroundRed3: SemanticColors.red3LightMode,
    backgroundGreen: SemanticColors.greenLightMode,
    backgroundGreen1: SemanticColors.green1LightMode,
    backgroundGreen2: SemanticColors.green2LightMode,
    backgroundGreen3: SemanticColors.green3LightMode,
    backgroundOrange: SemanticColors.orangeLightMode,
    backgroundOrange1: SemanticColors.orange1LightMode,
    backgroundOrange2: SemanticColors.orange2LightMode,
    backgroundOrange3: SemanticColors.orange3LightMode,
    backgroundPrimary: PrimaryColors.baseLightMode,
    backgroundPrimaryDark1: PrimaryColors.dark1LightMode,
    backgroundPrimaryDark2: PrimaryColors.dark2LightMode,
    backgroundPrimaryDark3: PrimaryColors.dark3LightMode,
    backgroundPrimaryLight1: PrimaryColors.light1LightMode,
    backgroundPrimaryLight2: PrimaryColors.light2LightMode,
    backgroundPrimaryLight2DarkVersion: PrimaryColors.light2DarkMode,
    backgroundPrimaryLight3: PrimaryColors.light3LightMode,
    backgroundPrimaryLight4: PrimaryColors.light4LightMode,
    backgroundPrimaryLight5: PrimaryColors.light5LightMode,
    backgroundPrimaryLight6: PrimaryColors.light6LightMode,
    backgroundPrimaryLight7: PrimaryColors.light7LightMode,
    backgroundPrimaryLight8: PrimaryColors.light8LightMode,
    backgroundPrimaryLight8_2: PrimaryColors.light8LightMode,
    backgroundSecondary: SecondaryColors.baseLightMode,
    backgroundSecondary1: SecondaryColors.light1LightMode,
    backgroundSecondary2: SecondaryColors.light2LightMode,
    backgroundSecondary3: SecondaryColors.light3LightMode,
    backgroundSecondary4: SecondaryColors.light4LightMode,
    backgroundSecondary5: SecondaryColors.light5LightMode,
    backgroundSecondary6: SecondaryColors.light6LightMode,
    border1: NeutralColors.black,
    border2: NeutralColors.gray,
    border3: NeutralColors.gray1,
    border4: NeutralColors.gray2,
    border5: NeutralColors.gray3,
    border6: NeutralColors.gray4,
    border7: NeutralColors.gray5,
    border8: NeutralColors.gray6,
    border9: NeutralColors.gray7,
    border10: NeutralColors.gray8,
    borderRed: SemanticColors.redLightMode,
    borderGreen: SemanticColors.greenLightMode,
    borderPrimary: PrimaryColors.baseLightMode,
    borderPrimaryLight6: PrimaryColors.light6LightMode,
    borderPrimaryDark: PrimaryColors.dark3LightMode,
    divider1: NeutralColors.gray4,
    divider2: NeutralColors.gray5,
    divider3: NeutralColors.gray9,
  );
  static const darkThemeColor = CommonColors(
    textBlackDarkVersion: NeutralColors.blackDarkVersion,
    textBlack: NeutralColors.black,
    textGray: NeutralColors.gray,
    textGray1: NeutralColors.gray1,
    textGray2: NeutralColors.gray2,
    textGray3: NeutralColors.gray3,
    textGray4: NeutralColors.gray4,
    textGray5: NeutralColors.gray5,
    textGray5_2: NeutralColors.gray5,
    textGray6: NeutralColors.gray6,
    textGray7: NeutralColors.gray7,
    textGray8: NeutralColors.gray8,
    textWhite: NeutralColors.white,
    textWhite2DarkVersion: NeutralColors.white,
    textRed: SemanticColors.redLightMode,
    textGreen: SemanticColors.greenLightMode,
    textPrimary: PrimaryColors.baseLightMode,
    textPrimaryLight2: PrimaryColors.light2LightMode,
    backgroundDarkVersion: NeutralColors.blackDarkVersion,
    background2: NeutralColors.blackDarkVersion,
    backgroundGray: NeutralColors.gray,
    backgroundGray1: NeutralColors.gray1,
    backgroundGray2: NeutralColors.gray2,
    backgroundGray3: NeutralColors.gray3,
    backgroundGray4: NeutralColors.gray4,
    backgroundGray5: NeutralColors.gray5,
    backgroundGray6: NeutralColors.gray6,
    backgroundGray6_2: NeutralColors.gray6,
    backgroundGray7: NeutralColors.gray7,
    backgroundGray7_2: NeutralColors.gray7,
    backgroundGray8: NeutralColors.gray8,
    backgroundWhite: NeutralColors.white,
    backgroundWhite2DarkVersion: NeutralColors.white,
    backgroundRed: SemanticColors.redLightMode,
    backgroundRed1: SemanticColors.red1LightMode,
    backgroundRed2: SemanticColors.red2LightMode,
    backgroundRed3: SemanticColors.red3LightMode,
    backgroundGreen: SemanticColors.greenLightMode,
    backgroundGreen1: SemanticColors.green1LightMode,
    backgroundGreen2: SemanticColors.green2LightMode,
    backgroundGreen3: SemanticColors.green3LightMode,
    backgroundOrange: SemanticColors.orangeLightMode,
    backgroundOrange1: SemanticColors.orange1LightMode,
    backgroundOrange2: SemanticColors.orange2LightMode,
    backgroundOrange3: SemanticColors.orange3LightMode,
    backgroundPrimary: PrimaryColors.baseLightMode,
    backgroundPrimaryDark1: PrimaryColors.dark1LightMode,
    backgroundPrimaryDark2: SecondaryColors.baseLightMode,
    backgroundPrimaryDark3: PrimaryColors.dark3LightMode,
    backgroundPrimaryLight1: PrimaryColors.light1LightMode,
    backgroundPrimaryLight2: PrimaryColors.light2LightMode,
    backgroundPrimaryLight2DarkVersion: PrimaryColors.light2DarkMode,
    backgroundPrimaryLight3: PrimaryColors.light3LightMode,
    backgroundPrimaryLight4: PrimaryColors.light4LightMode,
    backgroundPrimaryLight5: PrimaryColors.light5LightMode,
    backgroundPrimaryLight6: PrimaryColors.light6LightMode,
    backgroundPrimaryLight7: PrimaryColors.light7LightMode,
    backgroundPrimaryLight8: PrimaryColors.light8LightMode,
    backgroundPrimaryLight8_2: PrimaryColors.light8LightMode,
    backgroundSecondary: SecondaryColors.baseLightMode,
    backgroundSecondary1: SecondaryColors.light1LightMode,
    backgroundSecondary2: SecondaryColors.light2LightMode,
    backgroundSecondary3: SecondaryColors.light3LightMode,
    backgroundSecondary4: SecondaryColors.light4LightMode,
    backgroundSecondary5: SecondaryColors.light5LightMode,
    backgroundSecondary6: SecondaryColors.light6LightMode,
    border1: NeutralColors.black,
    border2: NeutralColors.gray,
    border3: NeutralColors.gray1,
    border4: NeutralColors.gray2,
    border5: NeutralColors.gray3,
    border6: NeutralColors.gray4,
    border7: NeutralColors.gray5,
    border8: NeutralColors.gray6,
    border9: NeutralColors.gray7,
    border10: NeutralColors.gray8,
    borderRed: SemanticColors.redLightMode,
    borderGreen: SemanticColors.greenLightMode,
    borderPrimary: PrimaryColors.baseLightMode,
    borderPrimaryLight6: PrimaryColors.light6LightMode,
    borderPrimaryDark: PrimaryColors.dark3LightMode,
    divider1: NeutralColors.gray4,
    divider2: NeutralColors.gray5,
    divider3: NeutralColors.gray9,
  );
  // static const defaultAppColor = CommonColors(
  // );

  static CommonColors of(BuildContext context) {
    final current = Theme.of(context).appColor;
    return current;
  }
}
