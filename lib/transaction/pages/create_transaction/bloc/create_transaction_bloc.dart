import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/models/m_transaction.dart';
import 'package:money_management_app/transaction/controllers/transaction_controller.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_event.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_state.dart';

class CreateTransactionBloc extends Bloc<CreateTransactionEvent, CreateTransactionState> {
  CreateTransactionBloc() : super(const CreateTransactionState()) {
    on<CreateTransactionInitiated>(
      _onCreateTransactionInitiated,
    );
    on<AccountSelected>(
      _onAccountSelected,
    );
    on<DateSelected>(
      _onDateSelected,
    );

    on<CategorySelected>(
      _onCategorySelected,
    );
    on<CreateExpenseTransactionButtonPressed>(
      _onCreateExpenseTransactionButtonPressed,
    );
  }

  TransactionController transactionController = TransactionController();
  StorageService storageService = StorageService();

  FutureOr<void> _onCreateTransactionInitiated(
    CreateTransactionInitiated event,
    Emitter<CreateTransactionState> emit,
  ) async {
    final userId = await storageService.getUserId();
    final expenseCategories = await transactionController.getCategoriesByType(
      '1',
    );
    final incomeCategories = await transactionController.getCategoriesByType(
      '0',
    );
    if (userId != null) {
      final accounts = await transactionController.getAccounts(
        userId,
      );
      emit(
        state.copyWith(
          expenseCategories: expenseCategories,
          incomeCategories: incomeCategories,
          accounts: accounts,
        ),
      );
    }
  }

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

  FutureOr<void> _onCategorySelected(
    CategorySelected event,
    Emitter<CreateTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedCategory: event.category,
      ),
    );
  }

  FutureOr<void> _onDateSelected(
    DateSelected event,
    Emitter<CreateTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedDate: event.date,
      ),
    );
  }

  FutureOr<void> _onCreateExpenseTransactionButtonPressed(
    CreateExpenseTransactionButtonPressed event,
    Emitter<CreateTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final transaction = MTransaction(
      title: event.title,
      accountId: event.accountId,
      categoryId: event.categoryId,
      amount: event.amount,
      note: event.note,
      transactionDate: event.transactionDate,
    );

    final response = await transactionController.createTransaction(
      transaction: transaction,
    );
    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
    if (response?.statusCode == 200) {
      await Fluttertoast.showToast(
        msg: 'Transaction created successfully',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  }

  FutureOr<void> _onCreateIncomeTransactionButtonPressed(
    CreateIncomeTransactionButtonPressed event,
    Emitter<CreateTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final transaction = MTransaction(
      title: event.title,
      accountId: event.accountId,
      categoryId: event.categoryId,
      amount: event.amount,
      note: event.note,
      transactionDate: event.transactionDate,
    );

    final response = await transactionController.createTransaction(
      transaction: transaction,
    );
    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
    if (response?.statusCode == 200) {
      await Fluttertoast.showToast(
        msg: 'Transaction created successfully',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  }
}
