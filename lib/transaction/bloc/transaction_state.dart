import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_transaction.dart';
import 'package:money_management_app/models/m_transaction_group.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(false) bool isLoading,
    @Default([]) List<MTransactionGroup> allTransactions,
    @Default([]) List<MTransaction> dailyTransactions,
    @Default([]) List<MTransaction> weeklyTransactions,
    @Default([]) List<MTransaction> monthlyTransactions,
  }) = _TransactionState;
}
