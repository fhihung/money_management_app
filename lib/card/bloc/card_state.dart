import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_user.dart';

part 'card_state.freezed.dart';

@freezed
class CardState with _$CardState {
  const factory CardState({
    @Default(false) bool isLoading,
  }) = _CardState;
}
