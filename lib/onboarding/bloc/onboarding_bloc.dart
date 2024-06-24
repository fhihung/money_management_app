import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/login/screens/login_screen.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_event.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc()
      : super(
          OnBoardingState(
            pageController: PageController(),
          ),
        ) {
    on<OnBoardingPageChanged>(
      _onOnBoardingPageChanged,
    );
    on<NextPage>(
      _onNextPage,
    );
    on<SkipPressed>(
      _onSkipPressed,
    );
  }
  final StorageService storageService = StorageService();

  FutureOr<void> _onOnBoardingPageChanged(
    OnBoardingPageChanged event,
    Emitter<OnBoardingState> emit,
  ) {
    emit(state.copyWith(currentPage: event.id));
  }

  FutureOr<void> _onNextPage(
    NextPage event,
    Emitter<OnBoardingState> emit,
  ) {
    final newPage = state.currentPage + 1;

    if (newPage < 3) {
      emit(state.copyWith(currentPage: newPage));
      state.pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.linearToEaseOut,
      );
    } else {
      storageService.setOnboardingComplete();
      Navigator.push(
        event.context,
        MaterialPageRoute<void>(
          builder: (context) => const LoginScreen(),
        ),
      );
    }
  }

  FutureOr<void> _onSkipPressed(
    SkipPressed event,
    Emitter<OnBoardingState> emit,
  ) {
    storageService.setOnboardingComplete();
    Navigator.push(
      event.context,
      MaterialPageRoute<void>(
        builder: (context) {
          return const LoginScreen();
        },
      ),
    );
  }
}
