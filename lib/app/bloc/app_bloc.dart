import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/app/bloc/app_event.dart';
import 'package:money_management_app/app/bloc/app_state.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/utils/utils.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppInitiated>(
      _onAppInitiated,
    );

    on<ThemeChanged>(
      _onThemeChanged,
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

  FutureOr<void> _onThemeChanged(ThemeChanged event, Emitter<AppState> emit) async {
    await storageService.setDarkTheme(isDarkTheme: event.isDarkTheme);
    _updateThemeSetting(event.isDarkTheme);
    emit(state.copyWith(isDarkTheme: event.isDarkTheme));
  }

  void _updateThemeSetting(bool isDarkTheme) {
    AppThemeSetting.currentCommonThemes = isDarkTheme ? CommonThemes.dark : CommonThemes.light;
  }
}
