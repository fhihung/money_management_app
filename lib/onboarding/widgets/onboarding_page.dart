import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final appColors = context.appColors;
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          SvgPicture.asset(
            width: THelperFunctions.screenWidth(context) * 0.8,
            height: THelperFunctions.screenHeight(context) * 0.6,
            image,
          ),
          Text(
            title,
            // TTexts.onBoardingTitle1,
            // style: AppTextStyle.headlineMd,
            style: AppTextStyles.headlineLg,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            // TTexts.onBoardingSubTitle1,
            style: AppTextStyles.bodySm2.copyWith(color: appColors.textGray2),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
