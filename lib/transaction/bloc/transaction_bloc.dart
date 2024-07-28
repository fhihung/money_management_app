import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/transaction/bloc/transaction_event.dart';
import 'package:money_management_app/transaction/bloc/transaction_state.dart';
import 'package:money_management_app/transaction/controllers/transaction_controller.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const TransactionState()) {
    on<TransactionInitiated>(
      _onTransactionInitiated,
    );
    on<AllTransactionFetched>(
      _onAllTransactionFetched,
    );
    on<DailyTransactionFetched>(
      _onDailyTransactionFetched,
    );
  }

  TransactionController transactionController = TransactionController();
  final storageService = StorageService();

  FutureOr<void> _onTransactionInitiated(
    TransactionInitiated event,
    Emitter<TransactionState> emit,
  ) {}

  FutureOr<void> _onAllTransactionFetched(
    AllTransactionFetched event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final userId = await storageService.getUserId();

    final transactions = await transactionController.getTransactionsByUserId(
      userId!,
    );
    emit(
      state.copyWith(
        isLoading: false,
        allTransactions: transactions!,
      ),
    );
  }

  FutureOr<void> _onDailyTransactionFetched(
    DailyTransactionFetched event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final userId = await storageService.getUserId();

    if (userId != null) {
      final transactions = await transactionController.getTransactionsByDate(
        userId: userId,
        startDate: DateTime.now(),
      );
      emit(
        state.copyWith(
          isLoading: false,
          dailyTransactions: transactions!,
        ),
      );
    }
  }
}
