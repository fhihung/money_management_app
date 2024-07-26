import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.freezed.dart';

abstract class TransactionEvent {
  const TransactionEvent();
}

@freezed
class TransactionInitiated extends TransactionEvent with _$TransactionInitiated {
  const factory TransactionInitiated() = _TransactionInitiated;
}

@freezed
class AllTransactionFetched extends TransactionEvent with _$AllTransactionFetched {
  const factory AllTransactionFetched() = _AllTransactionFetched;
}
