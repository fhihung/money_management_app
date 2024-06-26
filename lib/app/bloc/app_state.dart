import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default(false) bool isCompleteOnboarding,
    @Default(false) bool isLoggedIn,
    @Default(false) bool isDarkTheme,
    String? token,
  }) = _AppState;
}
