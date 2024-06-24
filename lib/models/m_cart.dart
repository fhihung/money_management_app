import 'package:json_annotation/json_annotation.dart';
import 'package:money_management_app/models/m_product.dart';

part 'm_cart.g.dart';

@JsonSerializable()
class MCart {
  MCart(
    this.id,
    this.userId,
    this.productId,
    this.quantity,
    this.product,
  );

  factory MCart.fromJson(Map<String, dynamic> json) => _$MCartFromJson(json);

  final int? id;
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'product_id')
  final int? productId;
  final int? quantity;
  @JsonKey(name: 'tbl_product')
  final MProduct? product;
  Map<String, dynamic> toJson() => _$MCartToJson(this);
}
