import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.freezed.dart';

abstract class ThemeEvent {
  const ThemeEvent();
}

@freezed
class ThemeInitiated extends ThemeEvent with _$ThemeInitiated {
  const factory ThemeInitiated() = _ThemeInitiated;
}
