import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_event.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_state.dart';
import 'package:money_management_app/sign_up/screens/select_country_screen.dart';
import 'package:money_management_app/utils/theme/widget_themes/app_text_styles.dart';
import 'package:money_management_app/utils/utils.dart';

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
                      const Text(
                        S.signUpTitle,
                        style: AppTextStyles.headlineLg,
                      ),
                      Text(
                        S.signUpSubTitle,
                        style: AppTextStyles.bodyMd1.copyWith(color: appColors.textGray2),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      // Form
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            // Username
                            TextFormField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Vui lòng nhập tên';
                                }
                                return null;
                              },
                              controller: nameController,
                              decoration: const InputDecoration(
                                labelText: S.username,
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
                            const SizedBox(
                              height: AppSizes.spaceBtwInputFields,
                            ),

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
                                labelText: S.password,
                                prefixIcon: Icon(Iconsax.password_check),
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
                                          text: '${S.iAgreeTo} ',
                                          style: Theme.of(context).textTheme.bodySmall,
                                        ),
                                        TextSpan(
                                          text: '${S.privacyPolicy} ',
                                          style: Theme.of(context).textTheme.bodyMedium!.apply(),
                                        ),
                                        TextSpan(
                                          text: '${S.and} ',
                                          style: Theme.of(context).textTheme.bodySmall,
                                        ),
                                        TextSpan(
                                          text: '${S.termsOfUse} ',
                                          style: Theme.of(context).textTheme.bodyMedium!.apply(),
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
                                  if (formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => SelectCountryScreen()));
                                    // Form is valid, proceed with the action
                                    // Do something, like sending data to server
                                    if (passwordController.text == confirmPasswordController.text) {
                                      context.read<SignUpBloc>().add(
                                            SignUpSubmitted(
                                              context: context,
                                              email: emailController.text,
                                              name: nameController.text,
                                              password: passwordController.text,
                                              passwordConfirmation: confirmPasswordController.text,
                                            ),
                                          );
                                    }
                                  }
                                },
                                child: const Text(S.createAccount),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      // Divider
                      // const AppDividerWidget(text: S.orSignUpWith),
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
