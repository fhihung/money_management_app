import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_event.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_state.dart';

import '../../../../models/m_sub_category.dart';

class CreateTransactionBloc extends Bloc<CreateTransactionEvent, CreateTransactionState> {
  CreateTransactionBloc() : super(const CreateTransactionState()) {
    on<CreateTransactionInitiated>(
      _onCreateTransactionInitiated,
    );
    on<AccountSelected>(
      _onAccountSelected,
    );
    on<SubCategorySelected>(
      _onSubCategorySelected,
    );
    on<SubCategoryDeselected>(
      _onSubCategoryDeselected,
    );
  }

  FutureOr<void> _onCreateTransactionInitiated(
    CreateTransactionInitiated event,
    Emitter<CreateTransactionState> emit,
  ) {}
  FutureOr<void> _onAccountSelected(
    AccountSelected event,
    Emitter<CreateTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedAccount: event.accountId,
      ),
    );
  }

  FutureOr<void> _onSubCategorySelected(
    SubCategorySelected event,
    Emitter<CreateTransactionState> emit,
  ) async {
    final newSelectedCategories = List<MSubCategory>.from(
      state.selectedSubCategory ?? [],
    );
    if (event.subCategory != null &&
        !newSelectedCategories.contains(
          event.subCategory,
        )) {
      newSelectedCategories.add(event.subCategory!);
    }
    emit(
      state.copyWith(
        selectedSubCategory: newSelectedCategories,
      ),
    );
  }

  FutureOr<void> _onSubCategoryDeselected(
    SubCategoryDeselected event,
    Emitter<CreateTransactionState> emit,
  ) async {
    final newSelectedCategories = List<MSubCategory>.from(state.selectedSubCategory ?? [])
      ..remove(
        event.subCategory,
      );
    emit(state.copyWith(selectedSubCategory: newSelectedCategories));
  }
}
