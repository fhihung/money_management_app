// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MAccount _$MAccountFromJson(Map<String, dynamic> json) => MAccount(
      (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      accountNumber: json['accountNumber'] as String?,
      balance: json['balance'] as String?,
      alias: json['alias'] as String?,
    );

Map<String, dynamic> _$MAccountToJson(MAccount instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'accountNumber': instance.accountNumber,
      'balance': instance.balance,
      'alias': instance.alias,
    };
