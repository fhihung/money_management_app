// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MCategory _$MCategoryFromJson(Map<String, dynamic> json) => MCategory(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
    );

Map<String, dynamic> _$MCategoryToJson(MCategory instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
