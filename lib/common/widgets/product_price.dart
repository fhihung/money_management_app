import 'package:flutter/material.dart';

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
    return Text(
      '$currencyUnit$price',
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              )
          : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
