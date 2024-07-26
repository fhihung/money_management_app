import 'dart:async';

import 'package:bloc/bloc.dart';
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
  }
  TransactionController transactionController = TransactionController();

  FutureOr<void> _onTransactionInitiated(
    TransactionInitiated event,
    Emitter<TransactionState> emit,
  ) {}
  FutureOr<void> _onAllTransactionFetched(
    AllTransactionFetched event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final transactions = await transactionController.getTransactions();
    emit(
      state.copyWith(
        isLoading: false,
        allTransactions: transactions,
      ),
    );
  }
}
