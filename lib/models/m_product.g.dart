// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MProduct _$MProductFromJson(Map<String, dynamic> json) => MProduct(
      json['tbl_brand'] == null
          ? null
          : MBrand.fromJson(json['tbl_brand'] as Map<String, dynamic>),
      json['tbl_category_product'] == null
          ? null
          : MCategoryProduct.fromJson(
              json['tbl_category_product'] as Map<String, dynamic>),
      (json['quantity'] as num?)?.toInt(),
      (json['product_id'] as num?)?.toInt(),
      json['product_desc'] as String?,
      json['product_content'] as String?,
      (json['cate_id'] as num?)?.toInt(),
      (json['new'] as num?)?.toInt(),
      (json['brand_id'] as num?)?.toInt(),
      json['product_name'] as String?,
      json['product_image'] as String?,
      json['product_price'] as String?,
    );

Map<String, dynamic> _$MProductToJson(MProduct instance) => <String, dynamic>{
      'product_id': instance.id,
      'product_name': instance.name,
      'product_desc': instance.description,
      'product_content': instance.content,
      'cate_id': instance.categoryId,
      'product_image': instance.image,
      'quantity': instance.quantity,
      'product_price': instance.price,
      'new': instance.newProduct,
      'brand_id': instance.brandId,
      'tbl_brand': instance.brand,
      'tbl_category_product': instance.categoryProduct,
    };
