import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.freezed.dart';

abstract class SettingEvent {
  const SettingEvent();
}

@freezed
class SettingInitiated extends SettingEvent with _$SettingInitiated {
  const factory SettingInitiated() = _SettingInitiated;
}
