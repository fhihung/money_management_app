import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/common/widgets/common_divider.dart';
import 'package:money_management_app/home/pages/home_page.dart';
import 'package:money_management_app/utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.appBarHeight * 1.5),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSizes.iconXs),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(AppSizes.md),
                    ),
                    child: const Icon(
                      Iconsax.coin,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: AppSizes.sm),
                  Text(
                    'Money Notebook',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              Text(
                'Sign in with your account',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              TextFormField(
                // controller: usernameController,
                decoration: const InputDecoration(
                  hintText: AppTexts.phoneNo,
                  // prefixIcon: Icon(Iconsax.user_edit),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              TextFormField(
                // controller: usernameController,
                decoration: const InputDecoration(
                  hintText: AppTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

              /// Remember Me & Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Remember Me
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text(AppTexts.rememberMe),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(AppTexts.forgetPassword),
                  ),
                ],
              ),

              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    AppTexts.signIn,
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                          color: AppColors.white,
                        ),
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    'Register now',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? AppColors.white : AppColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? AppColors.white : AppColors.primary,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 130,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              const CommonDivider(text: 'Other methods'),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Icon(
                          Iconsax.add,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Icon(
                        Iconsax.add,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
