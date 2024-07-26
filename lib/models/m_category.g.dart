// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MCategory _$MCategoryFromJson(Map<String, dynamic> json) => MCategory(
      (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      categoryType:
          $enumDecodeNullable(_$CategoryTypeEnumMap, json['categoryType']),
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$MCategoryToJson(MCategory instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryType': _$CategoryTypeEnumMap[instance.categoryType],
      'icon': instance.icon,
    };

const _$CategoryTypeEnumMap = {
  CategoryType.expense: 'expense',
  CategoryType.income: 'income',
};
