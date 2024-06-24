// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_check_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MCheckOut _$MCheckOutFromJson(Map<String, dynamic> json) => MCheckOut(
      (json['id'] as num?)?.toInt(),
      (json['product_id'] as num?)?.toInt(),
      (json['user_id'] as num?)?.toInt(),
      (json['quantity'] as num?)?.toInt(),
      (json['payment_method'] as num?)?.toInt(),
      (json['status'] as num?)?.toInt(),
      (json['total_price'] as num?)?.toDouble(),
      (json['shipping_fee'] as num?)?.toDouble(),
      json['shipping_address'] as String?,
    );

Map<String, dynamic> _$MCheckOutToJson(MCheckOut instance) => <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'user_id': instance.userId,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
      'shipping_fee': instance.shippingFee,
      'shipping_address': instance.shippingAddress,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
    };
