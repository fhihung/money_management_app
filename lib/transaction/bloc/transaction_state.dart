import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_transaction.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(false) bool isLoading,
    List<Map<String, List<MTransaction?>>>? allTransactions,
    @Default([]) List<MTransaction> dailyTransactions,
    @Default([]) List<MTransaction> weeklyTransactions,
    @Default([]) List<MTransaction> monthlyTransactions,
  }) = _TransactionState;
}
