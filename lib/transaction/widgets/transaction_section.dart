import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({
    super.key,
    required this.title,
    required this.content,
  });
  final Widget title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Column(
      children: [
        const SizedBox(
          height: AppSpaces.space6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
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
            ),
            content
          ],
        ),
      ],
    );
  }
}
