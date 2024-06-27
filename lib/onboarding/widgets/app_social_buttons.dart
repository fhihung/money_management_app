import 'package:flutter/material.dart';
import 'package:money_management_app/resources/generated/assets.gen.dart';
import 'package:money_management_app/utils/utils.dart';

class AppSocialButtons extends StatelessWidget {
  const AppSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: appColors.backgroundGray6,
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: Image(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: AssetImage(Assets.logos.googleIcon.path),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            color: appColors.backgroundGray6,

            // border: Border.all(color: dark ? AppColors.darkerGrey : AppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: Image(
                color: appColors.textBlackDarkVersion,
                width: AppSizes.iconMd,
                height: AppSizes.iconMd,
                image: AssetImage(
                  Assets.icons.brands.appleLogo.path,
                )),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
