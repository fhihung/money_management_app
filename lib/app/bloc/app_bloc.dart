import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/app/bloc/app_event.dart';
import 'package:money_management_app/app/bloc/app_state.dart';
import 'package:money_management_app/app/storage_service.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppInitiated>(
      _onAppInitiated,
    );
  }
  StorageService storageService = StorageService();

  FutureOr<void> _onAppInitiated(
    AppInitiated event,
    Emitter<AppState> emit,
  ) async {
    final isCompleteOnboarding = await storageService.isOnboardingComplete();
    emit(state.copyWith(isCompleteOnboarding: isCompleteOnboarding));
    final token = await storageService.getToken();
    if (token != null) {
      emit(state.copyWith(token: token));
    }
  }
}
