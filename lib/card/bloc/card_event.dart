import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_event.freezed.dart';

abstract class CardEvent {
  const CardEvent();
}

@freezed
class CardInitiated extends CardEvent with _$CardInitiated {
  const factory CardInitiated() = _CardInitiated;
}
