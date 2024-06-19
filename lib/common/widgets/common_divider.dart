import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';

class CommonDivider extends StatelessWidget {
  const CommonDivider({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkerGrey : AppColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text, style: Theme.of(context).textTheme.titleMedium),
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkerGrey : AppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
