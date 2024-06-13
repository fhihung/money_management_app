import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    required this.title,
    required this.subtitle,
    required this.image,
    super.key,
  });
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth(context) * 0.8,
            height: THelperFunctions.screenHeight(context) * 0.6,
            image: AssetImage(
              image,
              // TImages.onBoardingImage1,
            ),
          ),
          Text(
            title,
            // TTexts.onBoardingTitle1,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            // TTexts.onBoardingSubTitle1,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
