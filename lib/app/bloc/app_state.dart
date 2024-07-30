import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default(false) bool isCompleteOnboarding,
    @Default(ThemeMode.system) ThemeMode themeMode,
    String? token,
  }) = _AppState;
}
