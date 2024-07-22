import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_account.dart';

import '../../../../models/m_sub_category.dart';

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

@freezed
class SubCategorySelected extends CreateTransactionEvent with _$SubCategorySelected {
  const factory SubCategorySelected(
    MSubCategory? subCategory,
  ) = _SubCategorySelected;
}

@freezed
class SubCategoryDeselected extends CreateTransactionEvent with _$SubCategoryDeselected {
  const factory SubCategoryDeselected(
    MSubCategory? subCategory,
  ) = _SubCategoryDeselected;
}
