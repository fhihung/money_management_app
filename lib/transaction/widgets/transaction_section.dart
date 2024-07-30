import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({
    required this.title,
    this.content,
    super.key,
  });

  final Widget title;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Container(
      decoration: BoxDecoration(
        color: appColors.backgroundWhite2DarkVersion,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppSpaces.space4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ColoredBox(
                color: appColors.backgroundPrimaryLight1,
                child: const SizedBox(
                  width: 3,
                  height: AppSpaces.space6,
                ),
              ),
              const SizedBox(
                width: AppSpaces.space2,
              ),
              DefaultTextStyle(
                style: AppTextStyles.bodySm2.copyWith(
                  color: appColors.textGray2,
                ),
                child: title,
              ),
            ],
          ),
          content ?? const SizedBox(),
        ],
      ),
    );
  }
}
