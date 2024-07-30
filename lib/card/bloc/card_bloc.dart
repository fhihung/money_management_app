import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/card/bloc/card_event.dart';
import 'package:money_management_app/card/bloc/card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(const CardState()) {
    on<CardInitiated>(
      _onCardInitiated,
    );
  }

  final storageService = StorageService();

  FutureOr<void> _onCardInitiated(
    CardInitiated event,
    Emitter<CardState> emit,
  ) async {}
}
