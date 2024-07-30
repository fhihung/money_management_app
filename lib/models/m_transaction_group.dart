import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_transaction.dart';

part 'm_transaction_group.g.dart';

@JsonSerializable()
class MTransactionGroup {
  MTransactionGroup({
    required this.date,
    required this.transactions,
    required this.totalExpense,
    required this.totalIncome,
  });

  factory MTransactionGroup.fromJson(Map<String, dynamic> json) =>
      _$MTransactionGroupFromJson(json);
  final String date;
  final List<MTransaction> transactions;
  final double totalExpense;
  final double totalIncome;
}
