import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_transaction.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(0) num totalBalance,
    @Default(0) num totalExpenseForCurrentMonth,
    @Default(0) num totalIncomeForCurrentMonth,
    @Default([]) List<MTransaction> transactionsByMonth,
    @Default([]) List<Map<String, dynamic>> totalIncomeByWeekForCurrentMonth,
    @Default([]) List<Map<String, dynamic>> totalExpenseByWeekForCurrentMonth,
  }) = _HomeState;
}
