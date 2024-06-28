import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_event.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_state.dart';
import 'package:money_management_app/sign_up/controller/sign_up_controller.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<SignUpInitiated>(
      _onSignUpInitiated,
    );
    on<SignUpSubmitted>(
      _onSignUpSubmitted,
    );
    on<CountrySelected>(
      _onCountrySelected,
    );
    on<CurrencySelected>(
      _onCurrencySelected,
    );
  }
  final signUpController = SignUpController();

  FutureOr<void> _onSignUpInitiated(
    SignUpInitiated event,
    Emitter<SignUpState> emit,
  ) {}

  Future<void> _onSignUpSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      await signUpController.register(
        context: event.context,
        name: event.name,
        role: 2,
        email: event.email,
        password: event.password,
        passwordConfirmation: event.passwordConfirmation,
      );
      emit(state.copyWith(isLoading: false));
    } catch (error) {
      // Handle error
      emit(state.copyWith(errorMessage: error.toString(), isLoading: false));
    }
  }

  FutureOr<void> _onCountrySelected(
    CountrySelected event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.selectedCountry));
  }

  FutureOr<void> _onCurrencySelected(
    CurrencySelected event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(selectedCurrency: event.selectedCurrency));
  }
}
