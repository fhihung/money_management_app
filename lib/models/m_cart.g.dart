// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MCart _$MCartFromJson(Map<String, dynamic> json) => MCart(
      (json['id'] as num?)?.toInt(),
      (json['user_id'] as num?)?.toInt(),
      (json['product_id'] as num?)?.toInt(),
      (json['quantity'] as num?)?.toInt(),
      json['tbl_product'] == null
          ? null
          : MProduct.fromJson(json['tbl_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MCartToJson(MCart instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'tbl_product': instance.product,
    };
