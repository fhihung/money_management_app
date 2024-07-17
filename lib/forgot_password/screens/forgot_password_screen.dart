import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/common_modal_bottom_sheet.dart';
import 'package:money_management_app/common/widgets/stack_widget.dart';
import 'package:money_management_app/forgot_password/reset_password.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final key = GlobalKey<FormState>();
    final appColors = context.appColors;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Text(
                S.resetPasswordTitle,
                style: AppTextStyles.headlineLg.copyWith(
                  color: appColors.textBlackDarkVersion,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                S.resetPasswordSubTitle,
                style: AppTextStyles.bodyMd1.copyWith(
                  color: appColors.textGray2,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// TextField
              Form(
                key: key,
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${S.pleaseEnterYour} ${S.email.toLowerCase()}';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: S.email,
                    prefixIcon: Icon(Iconsax.sms),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              /// Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(S.submit),
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      showModalBottomSheet<void>(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSpaces.space8),
                            topRight: Radius.circular(AppSpaces.space8),
                          ),
                        ),
                        backgroundColor: appColors.backgroundWhite2DarkVersion,
                        context: context,
                        builder: (context) => CommonModalBottomSheet(
                          showTextButton: false,
                          title: S.verifyEmail,
                          // subtitle: '${S.verifyEmailSubTitle} ${emailController.text} ${S.verifyEmailSubTitle2}',
                          image: StackWidget(),
                          textButton: S.checkNow,
                          onPressedElevatedButton: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const ResetPasswordScreen(),
                              ),
                            );
                          },
                        ),
                      );
                    }

                    // Get.off(
                    //   () => VerifyEmailView(
                    //     title: S.changeYourPasswordTitle,
                    //     subTitle: S.changeYourPasswordSubTitle,
                    //     continuePressed: () {
                    //       Get.offAll(
                    //         () => const LoginScreen(),
                    //       );
                    //     },
                    //     resendPressed: () {},
                    //   ),
                    // );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
