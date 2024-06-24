import 'package:json_annotation/json_annotation.dart';
import 'package:money_management_app/models/m_brand.dart';
import 'package:money_management_app/models/m_category_product.dart';

part 'm_product.g.dart';

@JsonSerializable()
class MProduct {
  MProduct(
    this.brand,
    this.categoryProduct,
    this.quantity,
    this.id,
    this.description,
    this.content,
    this.categoryId,
    this.newProduct,
    this.brandId,
    this.name,
    this.image,
    this.price,
  );

  factory MProduct.fromJson(Map<String, dynamic> json) => _$MProductFromJson(json);

  @JsonKey(name: 'product_id')
  final int? id;

  @JsonKey(name: 'product_name')
  final String? name;

  @JsonKey(name: 'product_desc')
  final String? description;

  @JsonKey(name: 'product_content')
  final String? content;

  @JsonKey(name: 'cate_id')
  final int? categoryId;

  @JsonKey(name: 'product_image')
  final String? image;

  @JsonKey(name: 'quantity')
  final int? quantity;

  @JsonKey(name: 'product_price')
  final String? price;

  @JsonKey(name: 'new')
  final int? newProduct;

  @JsonKey(name: 'brand_id')
  final int? brandId;

  @JsonKey(name: 'tbl_brand')
  final MBrand? brand;

  @JsonKey(name: 'tbl_category_product')
  final MCategoryProduct? categoryProduct;

  Map<String, dynamic> toJson() => _$MProductToJson(this);
}
