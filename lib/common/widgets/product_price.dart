import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class PriceUnit extends StatelessWidget {
  const PriceUnit({
    required this.price,
    this.textStyle,
    super.key,
    this.currencyUnit = r'$',
  });
  final String price;
  final String currencyUnit;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Text(
      '$currencyUnit$price',
      style: textStyle,
      overflow: TextOverflow.ellipsis,
    );
  }
}
