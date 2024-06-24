import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_management_app/resources/generated/assets.gen.dart';
import 'package:money_management_app/utils/utils.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({
    required this.title,
    required this.subTitle,
    super.key,
    this.image,
    this.email,
    this.continuePressed,
    this.resendPressed,
  });

  final Image? image;
  final String title;
  final String? email;
  final String subTitle;
  final void Function()? continuePressed;
  final void Function()? resendPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.clear),
            onPressed: () {
              // Get.offAll(
              //       () => const LoginScreen(),
              // ),
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              image ??
                  Image(
                    image: Assets.images.animations.sammyLineManReceivesAMail.provider(),
                  ),

              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              if (email != null) ...[
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  email!,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
              ],

              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: continuePressed,
                  child: const Text(AppTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(AppTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
