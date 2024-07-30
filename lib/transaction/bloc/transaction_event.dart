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

@freezed
class DailyTransactionFetched extends TransactionEvent with _$DailyTransactionFetched {
  const factory DailyTransactionFetched() = _DailyTransactionFetched;
}

@freezed
class WeeklyTransactionFetched extends TransactionEvent with _$WeeklyTransactionFetched {
  const factory WeeklyTransactionFetched() = _WeeklyTransactionFetched;
}

@freezed
class MonthlyTransactionFetched extends TransactionEvent with _$MonthlyTransactionFetched {
  const factory MonthlyTransactionFetched() = _MonthlyTransactionFetched;
}
