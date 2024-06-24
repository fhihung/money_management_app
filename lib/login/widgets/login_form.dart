import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
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
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final bloc = context.read<LoginBloc>();
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.spaceBtwSections,
            ),
            child: Column(
              children: [
                /// Email
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: 'Account',
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),

                /// Password
                TextFormField(
                  controller: passwordController,
                  obscureText: !state.isShowPassword,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
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
                    labelText: AppTexts.password,
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
                          value: state.isRememberMe,
                          onChanged: (value) {
                            bloc.add(RememberMePressed(isCheck: value!));
                          },
                        ),
                        const Text(AppTexts.rememberMe),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        bloc.add(const ForgotPasswordButtonPressed());
                      },
                      child: const Text(AppTexts.forgetPassword),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// Sign In Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      bloc.add(
                        LoginButtonPressed(
                          context: context,
                          email: emailController.text,
                          password: passwordController.text,
                        ),
                      );
                    },
                    child: const Text(AppTexts.signIn),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      AppTexts.createAccount,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
