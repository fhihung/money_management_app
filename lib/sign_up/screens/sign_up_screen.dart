import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/widgets/app_divider.dart';
import 'package:money_management_app/login/screens/login_screen.dart';
import 'package:money_management_app/onboarding/widgets/app_social_buttons.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_event.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_state.dart';
import 'package:money_management_app/sign_up/screens/select_country_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    final phoneNumberController = TextEditingController();
    final addressController = TextEditingController();

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: appColors.backgroundGray,
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      const Text(
                        S.signUpTitle,
                        style: AppTextStyles.headlineLg,
                      ),
                      Text(
                        S.signUpSubTitle,
                        style: AppTextStyles.bodyMd1.copyWith(
                          color: appColors.textGray2,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),

                      // Form
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            // Username
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return '${S.pleaseEnterYour} ${S.name.toLowerCase()}';
                                }
                                return null;
                              },
                              controller: nameController,
                              decoration: const InputDecoration(
                                labelText: S.name,
                                prefixIcon: Icon(Iconsax.user),
                              ),
                            ),
                            const SizedBox(
                              height: AppSizes.spaceBtwInputFields,
                            ),

                            // Email
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return '${S.pleaseEnterYour} ${S.email.toLowerCase()}';
                                }
                                return null;
                              },
                              controller: emailController,
                              decoration: const InputDecoration(
                                labelText: S.email,
                                prefixIcon: Icon(Iconsax.sms),
                              ),
                            ),
                            const SizedBox(
                              height: AppSizes.spaceBtwInputFields,
                            ),

                            // Password
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return '${S.pleaseEnterYour} ${S.password.toLowerCase()}';
                                }
                                return null;
                              },
                              controller: passwordController,
                              decoration: const InputDecoration(
                                labelText: S.password,
                                prefixIcon: Icon(Iconsax.lock_1),
                                suffixIcon: Icon(Iconsax.eye_slash),
                              ),
                            ),
                            const SizedBox(
                              height: AppSizes.spaceBtwInputFields,
                            ),

                            // Confirm Password
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return '${S.pleaseEnterYour} ${S.password.toLowerCase()}';
                                }
                                return null;
                              },
                              controller: confirmPasswordController,
                              decoration: const InputDecoration(
                                labelText: S.confirmPassword,
                                prefixIcon: Icon(Iconsax.lock_1),
                                suffixIcon: Icon(Iconsax.eye_slash),
                              ),
                            ),
                            const SizedBox(
                              height: AppSizes.spaceBtwInputFields,
                            ),

                            // Confirm Password
                            TextFormField(
                              controller: phoneNumberController,
                              decoration: const InputDecoration(
                                labelText: S.phoneNo,
                                prefixIcon: Icon(Iconsax.call),
                              ),
                            ),
                            const SizedBox(
                              height: AppSizes.spaceBtwInputFields,
                            ),

                            // Confirm Password
                            TextFormField(
                              controller: addressController,
                              decoration: const InputDecoration(
                                labelText: 'Address',
                                prefixIcon: Icon(Iconsax.location),
                              ),
                            ),
                            const SizedBox(height: AppSpaces.space6),
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
                                          text: '${S.iAgreeTo} ',
                                          style:
                                              AppTextStyles.captionLg.copyWith(
                                            color: appColors.textGray3,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '${S.privacyPolicy} ',
                                          style: AppTextStyles.captionLg.apply(
                                            color:
                                                appColors.textBlackDarkVersion,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '${S.and} ',
                                          style:
                                              AppTextStyles.captionLg.copyWith(
                                            color: appColors.textGray3,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '${S.termsOfUse} ',
                                          style: AppTextStyles.captionLg.apply(
                                            color:
                                                appColors.textBlackDarkVersion,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: AppSpaces.space10),

                            // Sign Up Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (context) =>
                                            const SelectCountryScreen(),
                                      ),
                                    );
                                    // Form is valid, proceed with the action
                                    // Do something, like sending data to server
                                    if (passwordController.text ==
                                        confirmPasswordController.text) {
                                      context.read<SignUpBloc>().add(
                                            SignUpSubmitted(
                                              context: context,
                                              email: emailController.text,
                                              name: nameController.text,
                                              password: passwordController.text,
                                              passwordConfirmation:
                                                  confirmPasswordController
                                                      .text,
                                              phoneNumber:
                                                  phoneNumberController.text,
                                              address: addressController.text,
                                            ),
                                          );
                                    }
                                  }
                                },
                                child: const Text(S.createAccount),
                              ),
                            ),
                            const SizedBox(height: AppSpaces.space7),

                            /// Already have an account
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  S.alreadyHaveAnAccount,
                                  style: AppTextStyles.captionLg.copyWith(
                                    color: appColors.textGray3,
                                  ),
                                ),
                                const SizedBox(
                                  width: AppSpaces.space2,
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    S.logIn,
                                    style: AppTextStyles.captionLg.apply(
                                      color: appColors.textBlackDarkVersion,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppSpaces.space10,
                      ),

                      /// Divider
                      const AppDivider(text: 'OR'),

                      const SizedBox(
                        height: AppSpaces.space7,
                      ),

                      /// Sign Up with Social Account
                      const AppSocialButtons(),
                    ],
                  ),
                ),
              ),

              // Loading Indicator
              if (state.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        );
      },
    );
  }
}
