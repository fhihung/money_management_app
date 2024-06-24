import 'package:json_annotation/json_annotation.dart';

part 'm_category_product.g.dart';

@JsonSerializable()
class MCategoryProduct {
  MCategoryProduct(
    this.status,
    this.description,
    this.id,
    this.name,
  );

  factory MCategoryProduct.fromJson(Map<String, dynamic> json) => _$MCategoryProductFromJson(json);

  @JsonKey(name: 'cate_id')
  final int? id;

  @JsonKey(name: 'cate_name')
  final String? name;

  @JsonKey(name: 'cate_desc')
  final String? description;

  @JsonKey(name: 'cate_status')
  final int? status;

  Map<String, dynamic> toJson() => _$MCategoryProductToJson(this);
}
