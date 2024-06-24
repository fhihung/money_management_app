import 'package:json_annotation/json_annotation.dart';

part 'm_drink.g.dart';

@JsonSerializable()
class MDrink {
  MDrink({
    required this.id,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
    // required this.createdAt,
    // required this.updatedAt,
  });

  factory MDrink.fromJson(Map<String, dynamic> json) => _$MDrinkFromJson(json);
  final int id;
  final String name;
  final String image;
  final int quantity;
  final String price;
  // final DateTime createdAt;
  // final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$MDrinkToJson(this);
}
