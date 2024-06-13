import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    this.onPressed,
    super.key,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text(
        AppTexts.skip,
      ),
    );
  }
}
