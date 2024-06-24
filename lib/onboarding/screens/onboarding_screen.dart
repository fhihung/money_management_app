import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_bloc.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_event.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_state.dart';
import 'package:money_management_app/onboarding/widgets/circular_button_widget.dart';
import 'package:money_management_app/onboarding/widgets/onboarding_page_widget.dart';
import 'package:money_management_app/onboarding/widgets/onboarding_skip_widget.dart';
import 'package:money_management_app/onboarding/widgets/page_indicator_widget.dart';
import 'package:money_management_app/resources/generated/assets.gen.dart';
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
      title: AppTexts.onBoardingTitle2,
      subtitle: AppTexts.onBoardingSubTitle2,
      image: Assets.images.onBoardingImages.taxiManGotRichWithAnIdea.path,
    ),
    OnBoardingPage(
      title: AppTexts.onBoardingTitle3,
      subtitle: AppTexts.onBoardingSubTitle3,
      image: Assets.images.onBoardingImages.taxiLeadership.path,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OnBoardingBloc>();
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      builder: (state, context) {
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
                    child: OnBoardingSkip(
                      onPressed: () {
                        bloc.add(SkipPressed(context: context));
                      },
                    ),
                  ),

                  // Page Indicator
                  Positioned(
                    bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
                    left: AppSizes.defaultSpace,
                    child: PageIndicatorWidget(
                      controller: state.pageController ?? PageController(),
                      onDotClicked: (index) {
                        bloc.add(OnBoardingPageChanged(id: index));
                      },
                    ),
                  ),

                  // Next Button
                  Positioned(
                    bottom: TDeviceUtils.getBottomNavigationBarHeight(),
                    right: AppSizes.defaultSpace,
                    child: CircularButton(
                      onPressed: () {
                        bloc.add(NextPage(context: context));
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
