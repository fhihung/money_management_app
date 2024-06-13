import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    required PageController pageController,
    @Default(0) int currentPage,
  }) = _OnBoardingState;
}
