import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/transaction/bloc/transaction_event.dart';
import 'package:money_management_app/transaction/bloc/transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const TransactionState()) {
    on<TransactionInitiated>(
      _onTransactionInitiated,
    );
  }

  FutureOr<void> _onTransactionInitiated(
    TransactionInitiated event,
    Emitter<TransactionState> emit,
  ) {}
}
