import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';

class CommonModalBottomSheet extends StatelessWidget {
  const CommonModalBottomSheet({
    required this.title,
    this.subtitle,
    required this.image,
    required this.textButton,
    this.showTextButton = true,
    super.key,
    this.onPressedElevatedButton,
    this.onPressedTextButton,
  });

  final String title;
  final String? subtitle;
  final Widget image;
  final String textButton;
  final bool showTextButton;
  final void Function()? onPressedElevatedButton;
  final void Function()? onPressedTextButton;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSpaces.space8,
        left: AppSpaces.space7,
        right: AppSpaces.space7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const SizedBox(height: AppSpaces.space7),
          Text(
            title,
            style: AppTextStyles.headlineSm1.copyWith(
              color: appColors.textBlackDarkVersion,
            ),
          ),
          const SizedBox(height: AppSpaces.space6),
          SizedBox(
            child: image,
          ),
          const SizedBox(height: AppSpaces.space7),
          Text(
            subtitle ?? '',
            style: AppTextStyles.bodyMd1.copyWith(
              color: appColors.textGray3,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpaces.space9),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 44),
            ),
            onPressed: onPressedElevatedButton,
            child: Text(
              textButton,
              style: AppTextStyles.buttonMd.copyWith(
                color: appColors.backgroundWhite,
              ),
            ),
          ),
          const SizedBox(height: AppSpaces.space5),
          Visibility(
            visible: showTextButton,
            child: TextButton(
              onPressed: onPressedTextButton,
              child: Text(
                S.notNow,
                style: AppTextStyles.buttonMd.copyWith(
                  color: appColors.textPrimary,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpaces.space8),
        ],
      ),
    );
  }
}
