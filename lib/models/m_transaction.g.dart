// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MTransaction _$MTransactionFromJson(Map<String, dynamic> json) => MTransaction(
      (json['id'] as num?)?.toInt(),
      json['title'] as String?,
      MAccount.fromJson(json['account'] as Map<String, dynamic>),
      MCategory.fromJson(json['category'] as Map<String, dynamic>),
      MSubCategory.fromJson(json['subCategory'] as Map<String, dynamic>),
      json['amount'] as String?,
      json['note'] as String?,
      json['transactionDate'] as String?,
      json['createdAt'] as String?,
    );

Map<String, dynamic> _$MTransactionToJson(MTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'account': instance.account,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'amount': instance.amount,
      'note': instance.note,
      'transactionDate': instance.transactionDate,
      'createdAt': instance.createdAt,
    };
