import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/bloc/app_bloc.dart';
import 'package:money_management_app/app/bloc/app_event.dart';
import 'package:money_management_app/app/bloc/app_state.dart';
import 'package:money_management_app/login/bloc/login_bloc.dart';
import 'package:money_management_app/login/bloc/login_state.dart';
import 'package:money_management_app/login/widgets/login_form.dart';
import 'package:money_management_app/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: AppColors.current.backgroundPrimaryDark2,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    BlocBuilder<AppBloc, AppState>(
                      buildWhen: (previous, current) => previous.isDarkTheme != current.isDarkTheme,
                      builder: (context, state) {
                        return SwitchListTile.adaptive(
                          title: Text('Dark Theme'),
                          value: state.isDarkTheme,
                          onChanged: (isDarkTheme) => context.read<AppBloc>().add(
                                ThemeChanged(isDarkTheme: isDarkTheme),
                              ),
                          //     appBloc.add(
                          //   AppThemeChanged(isDarkTheme: isDarkTheme),
                          // ),
                        );
                      },
                    ),

                    /// Logo, Title, Subtitle
                    // LoginHeader(
                    //   image: AssetImage(
                    //     dark ? Assets.logos.tStoreSplashLogoWhite.path : Assets.logos.tStoreSplashLogoBlack.path,
                    //   ),
                    //   title: AppTexts.loginTitle,
                    //   subTitle: AppTexts.loginSubTitle,
                    // ),

                    /// Form
                    const LoginForm(),

                    /// Divider
                    // const AppDividerWidget(text: AppTexts.orSignInWith),

                    const SizedBox(
                      height: AppSizes.spaceBtwSections,
                    ),

                    /// Footer
                    // const AppSocialButtons(),
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
