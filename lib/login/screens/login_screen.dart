import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/login/bloc/login_bloc.dart';
import 'package:money_management_app/login/bloc/login_state.dart';
import 'package:money_management_app/login/widgets/login_form.dart';
import 'package:money_management_app/utils/theme/app_colors.dart';
import 'package:money_management_app/utils/theme/app_text_styles.dart';
import 'package:money_management_app/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final textStyles = context.appTextStyles;
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
                    Text(
                      'Let\'s get started',
                      style: textStyles.displaySm.copyWith(
                        color: appColors.textBlackDarkVersion,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Fill all required* inputs and submit form to register for Finance app account.',
                      style: textStyles.bodySm3.copyWith(
                        color: appColors.textGray2,
                      ),
                    ),

                    /// Form
                    const LoginForm(),

                    /// Divider
                    // const AppDividerWidget(text: S.orSignInWith),

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
