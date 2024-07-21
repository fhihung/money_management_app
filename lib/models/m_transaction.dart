import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:money_management_app/models/m_account.dart';
import 'package:money_management_app/models/m_category.dart';
import 'package:money_management_app/models/m_sub_category.dart';

part 'm_transaction.g.dart';

@JsonSerializable()
class MTransaction {
  MTransaction(
    this.id,
    this.title,
    this.account,
    this.category,
    this.subCategory,
    this.amount,
    this.note,
    this.transactionDate,
    this.createdAt,
  );

  factory MTransaction.fromJson(Map<String, dynamic> json) => _$MTransactionFromJson(json);

  int? id;
  String? title;
  MAccount account;
  MCategory category;
  MSubCategory subCategory;
  String? amount;
  String? note;
  String? transactionDate;
  String? createdAt;

  Map<String, dynamic> toJson() => _$MTransactionToJson(this);
}
