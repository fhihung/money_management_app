import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_management_app/models/m_account.dart';
import 'package:money_management_app/models/m_category.dart';

part 'm_transaction.g.dart';

@JsonSerializable()
class MTransaction {
  MTransaction(
    this.id, {
    this.title,
    this.accountId,
    this.categoryId,
    this.amount,
    this.note,
    this.transactionDate,
    this.createdAt,
    this.updatedAt,
  });

  factory MTransaction.fromJson(Map<String, dynamic> json) => _$MTransactionFromJson(json);

  int? id;
  String? title;
  int? accountId;
  int? categoryId;
  String? amount;
  String? note;
  DateTime? transactionDate;
  DateTime? createdAt;
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$MTransactionToJson(this);
}
