import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/bloc/app_bloc.dart';
import 'package:money_management_app/app/bloc/app_event.dart';
import 'package:money_management_app/app/bloc/app_state.dart';
import 'package:money_management_app/common/widgets/app_divider.dart';
import 'package:money_management_app/login/bloc/login_bloc.dart';
import 'package:money_management_app/login/bloc/login_state.dart';
import 'package:money_management_app/login/widgets/login_form.dart';
import 'package:money_management_app/onboarding/widgets/app_social_buttons.dart';
import 'package:money_management_app/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final dark = THelperFunctions.isDarkMode(context);
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: AppColors.current.backgroundPrimaryDark2,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.md,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Logo, Title, Subtitle
                    BlocBuilder<AppBloc, AppState>(
                      buildWhen: (previous, current) => previous.isDarkTheme != current.isDarkTheme,
                      builder: (context, state) {
                        return SwitchListTile.adaptive(
                          title: const Text('Theme'
                              // S.current.darkTheme,
                              ),
                          // tileColor: AppColors.current.primaryColor,
                          value: state.isDarkTheme,
                          onChanged: (isDarkTheme) => context.read<AppBloc>().add(
                                ThemeChanged(isDarkTheme: isDarkTheme),
                              ),
                        );
                      },
                    ),
                    Text(
                      'Log In',
                      style: AppTextStyles.headlineLg.copyWith(
                        color: appColors.textBlackDarkVersion,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Fill all required* inputs and submit form to log in for Finance app account.',
                      style: AppTextStyles.bodyMd1.copyWith(
                        color: appColors.textGray2,
                      ),
                    ),

                    /// Form
                    const LoginForm(),

                    /// Divider
                    AppDivider(text: S.or.toUpperCase()),

                    const SizedBox(
                      height: AppSizes.spaceBtwSections,
                    ),

                    /// Footer
                    const AppSocialButtons(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
