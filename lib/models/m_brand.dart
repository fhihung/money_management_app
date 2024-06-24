import 'package:json_annotation/json_annotation.dart';

part 'm_brand.g.dart';

@JsonSerializable()
class MBrand {
  MBrand(
    this.status,
    this.description,
    this.id,
    this.name,
  );

  factory MBrand.fromJson(Map<String, dynamic> json) => _$MBrandFromJson(json);

  @JsonKey(name: 'brand_id')
  final int? id;

  @JsonKey(name: 'brand_name')
  final String? name;

  @JsonKey(name: 'brand_desc')
  final String? description;

  @JsonKey(name: 'brand_status')
  final int? status;

  // @JsonKey(name: 'created_at')
  // final String createdAt;
  //
  // @JsonKey(name: 'updated_at')
  // final String updatedAt;

  Map<String, dynamic> toJson() => _$MBrandToJson(this);
}
