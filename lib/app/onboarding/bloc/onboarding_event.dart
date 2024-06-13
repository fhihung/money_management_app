import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.freezed.dart';

abstract class OnBoardingEvent {
  const OnBoardingEvent();
}

@freezed
class OnBoardingInitiated extends OnBoardingEvent with _$OnBoardingInitiated {
  const factory OnBoardingInitiated() = _OnBoardingInitiated;
}

@freezed
class OnBoardingPageChanged extends OnBoardingEvent with _$OnBoardingPageChanged {
  const factory OnBoardingPageChanged({
    required int id,
  }) = _OnBoardingPageChanged;
}

@freezed
class NextPage extends OnBoardingEvent with _$NextPage {
  const factory NextPage() = _NextPage;
}

@freezed
class SkipPressed extends OnBoardingEvent with _$SkipPressed {
  const factory SkipPressed() = _SkipPressed;
}
