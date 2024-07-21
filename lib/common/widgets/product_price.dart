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
  final String sign;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: textStyle ??
          AppTextStyles.headlineSm.copyWith(
            color: _getTextColor(context),
          ),
      child: Text(
        '$sign$currencyUnit$price',
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Color _getTextColor(BuildContext context) {
    final appColors = context.appColors;

    switch (sign) {
      case '+':
        return appColors.textGreen;
      case '-':
        return appColors.textRed;
      default:
        return appColors.textBlack;
    }
  }
}
