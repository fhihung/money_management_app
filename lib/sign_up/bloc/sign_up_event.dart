import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

abstract class SignUpEvent {
  const SignUpEvent();
}

@freezed
class SignUpInitiated extends SignUpEvent with _$SignUpInitiated {
  const factory SignUpInitiated() = _SignUpInitiated;
}

@freezed
class SignUpSubmitted extends SignUpEvent with _$SignUpSubmitted {
  const factory SignUpSubmitted({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required BuildContext context,
    @Default('') String phoneNumber,
    @Default('') String address,
  }) = _SignUpSubmitted;
}

@freezed
class CountrySelected extends SignUpEvent with _$CountrySelected {
  const factory CountrySelected({
    required String? selectedCountry,
  }) = _CountrySelected;
}

@freezed
class CurrencySelected extends SignUpEvent with _$CurrencySelected {
  const factory CurrencySelected({
    required String? selectedCurrency,
  }) = _CurrencySelected;
}
