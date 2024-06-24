// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_drink.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MDrink _$MDrinkFromJson(Map<String, dynamic> json) => MDrink(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: json['price'] as String,
    );

Map<String, dynamic> _$MDrinkToJson(MDrink instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'quantity': instance.quantity,
      'price': instance.price,
    };
