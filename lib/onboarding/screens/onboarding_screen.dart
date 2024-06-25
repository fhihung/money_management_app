import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_bloc.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_event.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_state.dart';
import 'package:money_management_app/onboarding/widgets/onboarding_page.dart';
import 'package:money_management_app/onboarding/widgets/page_indicator_widget.dart';
import 'package:money_management_app/resources/generated/assets.gen.dart';
import 'package:money_management_app/utils/theme/app_buttons.dart';
import 'package:money_management_app/utils/theme/app_colors.dart';
import 'package:money_management_app/utils/theme/app_text_styles.dart';
import 'package:money_management_app/utils/utils.dart'; // Assuming this contains AppTexts, AppSizes, TImages, TDeviceUtils

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final List<Widget> listPage = [
    OnBoardingPage(
      title: 'Note Down Expenses',
      subtitle: 'Daily note your expenses to help manage money',
      image: Assets.images.onBoardingImages.taxiItsRainingMoney.path,
    ),
    OnBoardingPage(
      title: S.onBoardingTitle2,
      subtitle: S.onBoardingSubTitle2,
      image: Assets.images.onBoardingImages.taxiManGotRichWithAnIdea.path,
    ),
    OnBoardingPage(
      title: S.onBoardingTitle3,
      subtitle: S.onBoardingSubTitle3,
      image: Assets.images.onBoardingImages.taxiLeadership.path,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final appTextStyles = Theme.of(context).extension<AppTextStyles>()!;
    final appButtons = Theme.of(context).extension<AppButtons>()!;
    final bloc = context.read<OnBoardingBloc>();
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              // Scrollable Page View
              PageView(
                controller: state.pageController ?? PageController(),
                onPageChanged: (index) {
                  bloc.add(OnBoardingPageChanged(id: index));
                },
                children: listPage,
              ),

              /// Skip Button
              Positioned(
                top: TDeviceUtils.getAppBarHeight(),
                right: AppSizes.defaultSpace,
                child: TextButton(
                  onPressed: () {
                    bloc.add(SkipPressed(context: context));
                  },
                  child: Text(
                    S.skip,
                    style: TextStyle(color: appColors.textBlackDarkVersion),
                  ),
                ),
              ),

              /// Page Indicator
              Positioned.fill(
                bottom: TDeviceUtils.getBottomNavigationBarHeight() + 149,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: PageIndicatorWidget(
                    controller: state.pageController ?? PageController(),
                    onDotClicked: (index) {
                      bloc.add(OnBoardingPageChanged(id: index));
                    },
                  ),
                ),
              ),

              /// Next Button
              Positioned.fill(
                bottom: TDeviceUtils.getBottomNavigationBarHeight() + 53,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSizes.buttonLg,
                        ),
                        backgroundColor: appColors.backgroundPrimary,
                      ),
                      onPressed: () {
                        bloc.add(NextPage(context: context));
                      },
                      // style: ElevatedButton.styleFrom(),
                      child: Text(
                        S.continueText,
                        style: appTextStyles.buttonSm.copyWith(
                          color: appColors.textWhite,
                        ),
                      ),
                      // child: Icon(
                      //   icon ?? Iconsax.arrow_right_3,
                      //   // color: dark ? AppColors.dark : AppColors.light,
                      // ),
                    ),
                  ),
                ),
              ),

              // Positioned(
              //   bottom: TDeviceUtils.getBottomNavigationBarHeight(),
              //   right: AppSizes.defaultSpace,
              //   child: CircularButton(
              //     onPressed: () {
              //       bloc.add(NextPage(context: context));
              //     },
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}
