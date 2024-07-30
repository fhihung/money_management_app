import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/setting/pages/theme/bloc/theme_event.dart';
import 'package:money_management_app/setting/pages/theme/bloc/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ThemeInitiated>(
      _onThemeInitiated,
    );
  }

  final storageService = StorageService();

  FutureOr<void> _onThemeInitiated(
    ThemeInitiated event,
    Emitter<ThemeState> emit,
  ) {}
}
