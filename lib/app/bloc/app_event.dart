import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.freezed.dart';

abstract class AppEvent {
  const AppEvent();
}

@freezed
class AppInitiated extends AppEvent with _$AppInitiated {
  const factory AppInitiated() = _AppInitiated;
}

@freezed
class ThemeChanged extends AppEvent with _$ThemeChanged {
  const factory ThemeChanged({
    required ThemeMode themeMode,
  }) = _ThemeChanged;
}
