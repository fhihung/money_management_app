import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class PriceUnit extends StatelessWidget {
  const PriceUnit({
    required this.price,
    this.textStyle,
    super.key,
    this.currencyUnit = r'$',
    this.sign = '',
  });
  final String price;
  final String currencyUnit;
  final TextStyle? textStyle;
  final String sign;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    // Determine text color based on sign
    Color textColor;
    if (sign == '+') {
      textColor = appColors.textGreen;
    } else if (sign == '-') {
      textColor = appColors.textRed;
    } else {
      textColor = appColors.textBlack;
    }

    return DefaultTextStyle(
        style: AppTextStyles.headlineSm.copyWith(
          color: textColor,
        ),
        child: Text(
          '$sign$currencyUnit$price',
          overflow: TextOverflow.ellipsis,
        ));
  }
}
