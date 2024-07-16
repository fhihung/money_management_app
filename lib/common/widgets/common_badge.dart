import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class CommonBadge extends StatelessWidget {
  const CommonBadge({
    super.key,
    this.textStyle,
    this.color,
  });
  final TextStyle? textStyle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Positioned(
      right: 16,
      top: 14,
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: color ?? appColors.backgroundRed,
          borderRadius: BorderRadius.circular(100),
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(bottom: 1),
        //       child: Text(
        //         quantity.toString(),
        //         style: Theme.of(context).textTheme.labelLarge!.apply(
        //               color: AppColors.white,
        //             ),
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
