// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MBrand _$MBrandFromJson(Map<String, dynamic> json) => MBrand(
      (json['brand_status'] as num?)?.toInt(),
      json['brand_desc'] as String?,
      (json['brand_id'] as num?)?.toInt(),
      json['brand_name'] as String?,
    );

Map<String, dynamic> _$MBrandToJson(MBrand instance) => <String, dynamic>{
      'brand_id': instance.id,
      'brand_name': instance.name,
      'brand_desc': instance.description,
      'brand_status': instance.status,
    };
