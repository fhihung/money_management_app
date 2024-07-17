import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class VerticalTextButton extends StatelessWidget {
  const VerticalTextButton({
    required this.text,
    super.key,
    this.textColor,
    this.backgroundColor,
    this.icon,
    this.onPressed,
  });

  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final Widget? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? appColors.backgroundGray7_2,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(12),
          ),
          child: icon,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
        Text(
          text,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor ?? appColors.textBlackDarkVersion,
          ),
        ),
      ],
    );
  }
}
