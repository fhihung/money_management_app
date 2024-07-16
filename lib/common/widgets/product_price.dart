import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    required this.price,
    super.key,
    this.currencyUnit = r'$',
    this.isLarge = false,
    this.lineThrough = false,
  });
  final String price;
  final String currencyUnit;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Text(
      '$currencyUnit$price',
      style: isLarge
          ? AppTextStyles.displaySm.copyWith(color: appColors.textWhite)
          : AppTextStyles.bodySm2.copyWith(color: appColors.textWhite),
      overflow: TextOverflow.ellipsis,
    );
  }
}
