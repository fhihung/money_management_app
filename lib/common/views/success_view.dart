import 'package:flutter/material.dart';
import 'package:money_management_app/common/common.dart';
import 'package:money_management_app/utils/utils.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({
    required this.image,
    required this.title,
    required this.subTitle,
    super.key,
    this.onPressed,
    this.textButton,
  });

  final Image image;
  final String title;
  final String subTitle;
  final String? textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              image,

              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(textButton ?? AppTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
