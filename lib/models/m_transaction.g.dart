// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MTransaction _$MTransactionFromJson(Map<String, dynamic> json) => MTransaction(
      (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      accountId: (json['accountId'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      amount: json['amount'] as String?,
      note: json['note'] as String?,
      transactionDate: json['transactionDate'] == null
          ? null
          : DateTime.parse(json['transactionDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$MTransactionToJson(MTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
      'amount': instance.amount,
      'note': instance.note,
      'transactionDate': instance.transactionDate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
