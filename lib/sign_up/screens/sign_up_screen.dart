import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_event.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_state.dart';
import 'package:money_management_app/utils/utils.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final addressController = TextEditingController();
    final phoneNumberController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        AppTexts.signUpTitle,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      // Form
                      Form(
                        child: Column(
                          children: [
                            // Username
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Vui lòng nhập tên';
                                }
                                return null;
                              },
                              controller: nameController,
                              decoration: const InputDecoration(
                                labelText: AppTexts.username,
                                prefixIcon: Icon(Iconsax.user_edit),
                              ),
                            ),
                            const SizedBox(height: AppSizes.spaceBtwInputFields),

                            // Email
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Vui lòng nhập email';
                                }
                                return null;
                              },
                              controller: emailController,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Iconsax.direct),
                              ),
                            ),
                            const SizedBox(height: AppSizes.spaceBtwInputFields),

                            // Address
                            TextFormField(
                              controller: addressController,
                              decoration: const InputDecoration(
                                labelText: 'Address',
                                prefixIcon: Icon(Iconsax.location),
                              ),
                            ),
                            const SizedBox(height: AppSizes.spaceBtwInputFields),

                            // Phone Number
                            TextFormField(
                              controller: phoneNumberController,
                              decoration: const InputDecoration(
                                labelText: AppTexts.phoneNo,
                                prefixIcon: Icon(Iconsax.call),
                              ),
                            ),
                            const SizedBox(height: AppSizes.spaceBtwInputFields),

                            // Password
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Vui lòng nhập mật khẩu';
                                }
                                return null;
                              },
                              controller: passwordController,
                              decoration: const InputDecoration(
                                labelText: AppTexts.password,
                                prefixIcon: Icon(Iconsax.password_check),
                                suffixIcon: Icon(Iconsax.eye_slash),
                              ),
                            ),
                            const SizedBox(height: AppSizes.spaceBtwInputFields),

                            // Confirm Password
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Vui lòng nhập lại mật khẩu';
                                }
                                return null;
                              },
                              controller: confirmPasswordController,
                              decoration: const InputDecoration(
                                labelText: 'Confirm Password',
                                prefixIcon: Icon(Iconsax.password_check),
                                suffixIcon: Icon(Iconsax.eye_slash),
                              ),
                            ),
                            const SizedBox(height: AppSizes.spaceBtwSections),

                            // Term & Condition
                            Row(
                              children: [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Checkbox(
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const SizedBox(width: AppSizes.spaceBtwItems),
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '${AppTexts.iAgreeTo} ',
                                          style: Theme.of(context).textTheme.bodySmall,
                                        ),
                                        TextSpan(
                                          text: '${AppTexts.privacyPolicy} ',
                                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                                // color: dark ? AppColors.white : AppColors.primary,
                                                decoration: TextDecoration.underline,
                                                // decorationColor: dark ? AppColors.white : AppColors.primary,
                                              ),
                                        ),
                                        TextSpan(
                                          text: '${AppTexts.and} ',
                                          style: Theme.of(context).textTheme.bodySmall,
                                        ),
                                        TextSpan(
                                          text: '${AppTexts.termsOfUse} ',
                                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                                // color: dark ? AppColors.white : AppColors.primary,
                                                decoration: TextDecoration.underline,
                                                // decorationColor: dark ? AppColors.white : AppColors.primary,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: AppSizes.spaceBtwSections),

                            // Sign Up Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (passwordController.text == confirmPasswordController.text) {
                                    context.read<SignUpBloc>().add(
                                          SignUpSubmitted(
                                            context: context,
                                            email: emailController.text,
                                            name: nameController.text,
                                            password: passwordController.text,
                                            address: addressController.text,
                                            phoneNumber: phoneNumberController.text,
                                            passwordConfirmation: confirmPasswordController.text,
                                          ),
                                        );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Passwords do not match')),
                                    );
                                  }
                                },
                                child: const Text(AppTexts.createAccount),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      // Divider
                      // const AppDividerWidget(text: AppTexts.orSignUpWith),
                      const SizedBox(height: AppSizes.spaceBtwItems),

                      // Social Buttons
                      // const AppSocialButtons(),
                    ],
                  ),
                ),
              ),

              // Loading Indicator
              if (state.isLoading)
                Center(
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        );
      },
    );
  }
}
