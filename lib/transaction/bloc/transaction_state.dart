import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_transaction.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(false) bool isLoading,
    @Default([]) List<MTransaction> allTransactions,
    @Default([]) List<MTransaction> dailyTransactions,
  }) = _TransactionState;
}
