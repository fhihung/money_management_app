// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MAccount _$MAccountFromJson(Map<String, dynamic> json) => MAccount(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['accountNumber'] as String?,
      json['balance'] as String?,
    );

Map<String, dynamic> _$MAccountToJson(MAccount instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'accountNumber': instance.accountNumber,
      'balance': instance.balance,
    };
