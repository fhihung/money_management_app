import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/common_modal_bottom_sheet.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_state.dart';
import 'package:money_management_app/sign_up/screens/select_country_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final formKey = GlobalKey<FormState>();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

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
                        S.newPassword,
                        style: AppTextStyles.headlineLg,
                      ),
                      const SizedBox(height: AppSpaces.space4),
                      Text(
                        S.resetPasswordSubtitle,
                        style: AppTextStyles.bodyMd1.copyWith(
                          color: appColors.textGray2,
                        ),
                      ),
                      const SizedBox(
                        height: AppSpaces.space9,
                      ),
                      // Form
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
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
                            const SizedBox(height: AppSpaces.space10),

                            // Sign Up Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    // Form is valid, proceed with the action
                                    // Do something, like sending data to server
                                    if (passwordController.text == confirmPasswordController.text) {
                                      showModalBottomSheet<void>(
                                          backgroundColor: appColors.backgroundWhite2DarkVersion,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                AppSpaces.space8,
                                              ),
                                              topRight: Radius.circular(
                                                AppSpaces.space8,
                                              ),
                                            ),
                                          ),
                                          context: context,
                                          builder: (context) {
                                            return CommonModalBottomSheet(
                                              title: S.resetPasswordTitle,
                                              subtitle: S.resetPasswordSubtitle2,
                                              image: Container(
                                                margin: const EdgeInsets.all(
                                                  AppSpaces.space9,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment: Alignment.topCenter,
                                                      child: Container(
                                                        padding: const EdgeInsets.all(
                                                          AppSpaces.space7,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: appColors.backgroundGray7_2,
                                                          borderRadius: BorderRadius.circular(
                                                            AppSpaces.space8,
                                                          ),
                                                        ),
                                                        child: Icon(
                                                          Iconsax.tick_square,
                                                          size: AppSpaces.space11,
                                                          color: appColors.backgroundGreen,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: SvgPicture.asset(
                                                        colorFilter: ColorFilter.mode(
                                                          appColors.backgroundGreen,
                                                          BlendMode.srcIn,
                                                        ),
                                                        Assets.images.decor.path,
                                                        width: 200,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              textButton: S.continueText,
                                              onPressedElevatedButton: () {
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => const SelectCountryScreen(),
                                                  ),
                                                );
                                              },
                                            );
                                          });
                                    }
                                  }
                                },
                                child: const Text(S.resetPassword),
                              ),
                            ),
                          ],
                        ),
                      ),
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
