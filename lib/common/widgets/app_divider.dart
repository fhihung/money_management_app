import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: appColors.divider1,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: appColors.divider1,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
