import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_account.dart';
import 'package:money_management_app/models/m_sub_category.dart';

part 'create_transaction_state.freezed.dart';

@freezed
class CreateTransactionState with _$CreateTransactionState {
  const factory CreateTransactionState({
    @Default(false) bool isLoading,
    MAccount? selectedAccount,
    List<MSubCategory>? selectedSubCategory,
  }) = _CreateTransactionState;
}
