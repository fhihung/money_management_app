import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    required this.controller,
    super.key,
    this.onDotClicked,
  });
  final PageController controller;
  final void Function(int)? onDotClicked;

  @override
  Widget build(BuildContext context) {
    // final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return SmoothPageIndicator(
      effect: ExpandingDotsEffect(
        dotHeight: 7,
        activeDotColor: dark ? AppColors.light : AppColors.dark,
      ),
      controller: controller,
      onDotClicked: onDotClicked,
      count: 3,
    );
  }
}
