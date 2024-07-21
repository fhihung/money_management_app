import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm_category.g.dart';

@JsonSerializable()
class MCategory {
  MCategory(
    this.id,
    this.name,
  );

  factory MCategory.fromJson(Map<String, dynamic> json) => _$MCategoryFromJson(json);

  int? id;
  String? name;

  Map<String, dynamic> toJson() => _$MCategoryToJson(this);
}
