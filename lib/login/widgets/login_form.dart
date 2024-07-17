import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/common_bottom_navigation.dart';
import 'package:money_management_app/forgot_password/screens/forgot_password_screen.dart';
import 'package:money_management_app/home/pages/home_page.dart';
import 'package:money_management_app/login/bloc/login_bloc.dart';
import 'package:money_management_app/login/bloc/login_event.dart';
import 'package:money_management_app/login/bloc/login_state.dart';
import 'package:money_management_app/sign_up/screens/sign_up_screen.dart';
import 'package:money_management_app/utils/utils.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final bloc = context.read<LoginBloc>();
        return Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.spaceBtwSections,
            ),
            child: Column(
              children: [
                /// Email
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '${S.pleaseEnterYour} ${S.email.toLowerCase()}';
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.sms),
                    labelText: S.email,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),

                /// Password
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '${S.pleaseEnterYour} ${S.password.toLowerCase()}';
                    }
                    return null;
                  },
                  controller: passwordController,
                  obscureText: !state.isShowPassword,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.lock_1),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        bloc.add(const EyeSlashPressed());
                      },
                      child: state.isShowPassword
                          ? const Icon(
                              Iconsax.eye3,
                            )
                          : const Icon(
                              Iconsax.eye_slash,
                            ),
                    ),
                    labelText: S.password,
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
                          checkColor: appColors.textGray2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          side: BorderSide(
                            color: appColors.textGray2,
                          ),
                          value: state.isRememberMe,
                          onChanged: (value) {
                            bloc.add(RememberMePressed(isCheck: value!));
                          },
                        ),
                        Text(
                          S.keepMeLogin,
                          style: AppTextStyles.captionSm.apply(
                            color: appColors.textGray2,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const ForgotPasswordScreen(),
                          ),
                        );
                        // bloc.add(const ForgotPasswordButtonPressed());
                      },
                      child: const Text(S.forgetPassword),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// Sign In Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const CommonBottomNavigation(),
                        ),
                      );
                      if (formKey.currentState!.validate()) {
                        bloc.add(
                          LoginButtonPressed(
                            context: context,
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      }
                    },
                    child: const Text(S.continueText),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                // Sign Up Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.dontHaveAnAccount,
                      style: AppTextStyles.captionLg.copyWith(
                        color: appColors.textGray3,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.xs,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(S.createAccount,
                          style: AppTextStyles.captionLg.apply(
                            color: appColors.textBlackDarkVersion,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
