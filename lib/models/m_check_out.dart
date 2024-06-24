import 'package:json_annotation/json_annotation.dart';

part 'm_check_out.g.dart';

@JsonSerializable()
class MCheckOut {
  MCheckOut(
    this.id,
    this.productId,
    this.userId,
    this.quantity,
    this.paymentMethod,
    this.status,
    this.totalPrice,
    this.shippingFee,
    this.shippingAddress,
  );

  factory MCheckOut.fromJson(Map<String, dynamic> json) => _$MCheckOutFromJson(json);

  final int? id;

  @JsonKey(name: 'product_id')
  final int? productId;

  @JsonKey(name: 'user_id')
  final int? userId;

  final int? quantity;

  @JsonKey(name: 'total_price')
  double? totalPrice;

  @JsonKey(name: 'shipping_fee')
  double? shippingFee;

  @JsonKey(name: 'shipping_address')
  String? shippingAddress;

  @JsonKey(name: 'payment_method')
  final int? paymentMethod;

  final int? status;

  // @JsonKey(name: 'created_at')
  // final String createdAt;
  //
  // @JsonKey(name: 'updated_at')
  // final String updatedAt;

  Map<String, dynamic> toJson() => _$MCheckOutToJson(this);
}
