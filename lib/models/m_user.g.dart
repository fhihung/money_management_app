// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MUser _$MUserFromJson(Map<String, dynamic> json) => MUser(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['role'] as String?,
      json['password'] as String?,
      json['address'] as String?,
      json['phone_number'] as String?,
    );

Map<String, dynamic> _$MUserToJson(MUser instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'password': instance.password,
      'role': instance.role,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
    };
