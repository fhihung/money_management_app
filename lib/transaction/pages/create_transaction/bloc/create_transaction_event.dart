import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_account.dart';
import 'package:money_management_app/models/m_category.dart';

part 'create_transaction_event.freezed.dart';

abstract class CreateTransactionEvent {
  const CreateTransactionEvent();
}

@freezed
class CreateTransactionInitiated extends CreateTransactionEvent with _$CreateTransactionInitiated {
  const factory CreateTransactionInitiated() = _CreateTransactionInitiated;
}

@freezed
class AccountSelected extends CreateTransactionEvent with _$AccountSelected {
  const factory AccountSelected(
    MAccount? accountId,
  ) = _AccountSelected;
}

// @freezed
// class SubCategorySelected extends CreateTransactionEvent with _$SubCategorySelected {
//   const factory SubCategorySelected(
//     MSubCategory? subCategory,
//   ) = _SubCategorySelected;
// }
//
// @freezed
// class SubCategoryDeselected extends CreateTransactionEvent with _$SubCategoryDeselected {
//   const factory SubCategoryDeselected(
//     MSubCategory? subCategory,
//   ) = _SubCategoryDeselected;
// }

@freezed
class CategorySelected extends CreateTransactionEvent with _$CategorySelected {
  const factory CategorySelected(
    MCategory? category,
  ) = _CategorySelected;
}

@freezed
class DateSelected extends CreateTransactionEvent with _$DateSelected {
  const factory DateSelected(
    DateTime? date,
  ) = _DateSelected;
}

@freezed
class CreateExpenseTransactionButtonPressed extends CreateTransactionEvent
    with _$CreateExpenseTransactionButtonPressed {
  const factory CreateExpenseTransactionButtonPressed({
    required String title,
    required int accountId,
    required double amount,
    required int categoryId,
    required DateTime transactionDate,
    @Default('') String note,
  }) = _CreateExpenseTransactionButtonPressed;
}

@freezed
class CreateIncomeTransactionButtonPressed extends CreateTransactionEvent with _$CreateIncomeTransactionButtonPressed {
  const factory CreateIncomeTransactionButtonPressed({
    required String title,
    required int accountId,
    required double amount,
    required int categoryId,
    required DateTime transactionDate,
    @Default('') String note,
  }) = _CreateIncomeTransactionButtonPressed;
}
