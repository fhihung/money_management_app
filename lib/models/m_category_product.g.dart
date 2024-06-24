// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_category_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MCategoryProduct _$MCategoryProductFromJson(Map<String, dynamic> json) =>
    MCategoryProduct(
      (json['cate_status'] as num?)?.toInt(),
      json['cate_desc'] as String?,
      (json['cate_id'] as num?)?.toInt(),
      json['cate_name'] as String?,
    );

Map<String, dynamic> _$MCategoryProductToJson(MCategoryProduct instance) =>
    <String, dynamic>{
      'cate_id': instance.id,
      'cate_name': instance.name,
      'cate_desc': instance.description,
      'cate_status': instance.status,
    };
