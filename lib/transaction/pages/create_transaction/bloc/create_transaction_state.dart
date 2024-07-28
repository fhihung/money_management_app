import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_account.dart';
import 'package:money_management_app/models/m_category.dart';

part 'create_transaction_state.freezed.dart';

@freezed
class CreateTransactionState with _$CreateTransactionState {
  const factory CreateTransactionState({
    @Default(false) bool isLoading,
    MAccount? selectedAccount,
    MCategory? selectedCategory,
    DateTime? selectedDate,
    @Default([]) List<MCategory> categories,
    @Default([]) List<MCategory> expenseCategories,
    @Default([]) List<MCategory> incomeCategories,
    @Default([]) List<MAccount> accounts,
  }) = _CreateTransactionState;
}
