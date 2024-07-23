import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    required this.title,
    required this.icon,
    super.key,
    this.padding,
    this.onTap,
  });

  final Widget title;
  final Widget icon;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpaces.space5,
          vertical: 13,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: appColors.backgroundWhite2DarkVersion,
          borderRadius: BorderRadius.circular(AppSpaces.space3),
          border: Border.all(
            color: appColors.border5,
          ),
        ),
        child: Row(
          children: [
            Padding(padding: padding ?? EdgeInsets.zero, child: icon),
            const SizedBox(width: AppSpaces.space2),
            DefaultTextStyle(
              style: AppTextStyles.bodySm2.copyWith(
                color: appColors.textGray2,
              ),
              child: title,
            ),
          ],
        ),
      ),
    );
  }
}
