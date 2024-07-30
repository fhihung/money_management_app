import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/login/screens/login_screen.dart';
import 'package:money_management_app/setting/bloc/setting_bloc.dart';
import 'package:money_management_app/setting/bloc/setting_event.dart';
import 'package:money_management_app/setting/bloc/setting_state.dart';
import 'package:money_management_app/setting/pages/theme/theme_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    super.initState();
    context.read<SettingBloc>().add(const SettingInitiated());
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Setting',
              style: AppTextStyles.bodyMd2.copyWith(),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpaces.space6,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: AppSpaces.space7,
                  ),
                  Center(
                    child: Container(
                      height: 56,
                      width: 56,
                      padding: const EdgeInsets.all(AppSpaces.space6),
                      decoration: BoxDecoration(
                        color: appColors.backgroundGray1,
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSpaces.space5,
                  ),
                  Text(
                    state.user?.name ?? '',
                    style: AppTextStyles.bodySm2.copyWith(
                      color: appColors.textBlackDarkVersion,
                    ),
                  ),
                  const SizedBox(
                    height: AppSpaces.space7,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: AppSpaces.space6),
                            child: Text(
                              'Account',
                              style: AppTextStyles.captionLg.copyWith(
                                color: appColors.textGray2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSpaces.space1,
                      ),
                      SettingItem(
                        title: const Text('My Profile'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.profile.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Security'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.shieldTick.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Group Sharing'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.profile2user.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Bank Acount'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.bank.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: AppSpaces.space6),
                            child: Text(
                              'Preferences',
                              style: AppTextStyles.captionLg.copyWith(
                                color: appColors.textGray2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSpaces.space1,
                      ),
                      SettingItem(
                        title: const Text('Currency'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.dollarSquare.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Country'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.shieldTick.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Notification'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.notification.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Language'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.languageCircle.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Accessibility'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.profileCircle.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => const ThemePage(),
                            ),
                          );
                        },
                        title: const Text('Theme'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.moon.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: AppSpaces.space6),
                            child: Text(
                              'Support',
                              style: AppTextStyles.captionLg.copyWith(
                                color: appColors.textGray2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSpaces.space1,
                      ),
                      SettingItem(
                        title: const Text('About'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.infoCircle.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Help'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.messageQuestion.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      SettingItem(
                        title: const Text('Term of Use'),
                        icon: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            appColors.backgroundGray,
                            BlendMode.srcIn,
                          ),
                          Assets.icons.linear.svg.textalignJustifyleft.path,
                          width: AppSpaces.space6 + 2,
                          height: AppSpaces.space6 + 2,
                        ),
                      ),
                      const SizedBox(
                        height: AppSpaces.space8,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: appColors.backgroundRed,
                          ),
                        ),
                        onPressed: () {
                          context.read<SettingBloc>().add(
                                LogoutPressed(
                                  onLogoutSuccess: () {
                                    Fluttertoast.showToast(
                                      msg: 'See you again!',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: Colors.green,
                                      textColor: Colors.white,
                                      fontSize: 16,
                                    );
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      ),
                                    );
                                  },
                                  onLogoutFailed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Logout failed',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16,
                                    );
                                  },
                                ),
                              );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSpaces.space5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Log out',
                                style: AppTextStyles.buttonSm.copyWith(
                                  color: appColors.textRed,
                                ),
                              ),
                              const SizedBox(width: AppSpaces.space3),
                              Assets.icons.linear.svg.logout.svg(
                                colorFilter: ColorFilter.mode(
                                  appColors.textRed,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSpaces.space8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({
    required this.icon,
    required this.title,
    super.key,
    this.onTap,
  });

  final Widget icon;
  final Widget title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppSpaces.space6,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          // Optional: Add a background color to the tap area if desired
          borderRadius:
              BorderRadius.circular(12), // Optional: Add rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                DefaultSvgTheme(
                  theme: SvgTheme(
                    currentColor: appColors.backgroundGray,
                  ),
                  child: icon,
                ),
                const SizedBox(
                  width: AppSpaces.space4,
                ),
                DefaultTextStyle(
                  style: AppTextStyles.bodySm2.copyWith(
                    color: appColors.backgroundGray,
                  ),
                  child: title,
                ),
              ],
            ),
            Assets.icons.linear.svg.arrowRight.svg(
              width: 16,
              height: 16,
              colorFilter: ColorFilter.mode(
                appColors.backgroundGray,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
