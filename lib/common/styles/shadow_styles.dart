import 'package:flutter/material.dart';

class AppShadowStyles {
  static final verticalProductShadow = BoxShadow(
    // color: CommonColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    // color: CommonColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(2, 0),
  );
}
