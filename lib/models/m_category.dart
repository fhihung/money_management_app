import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:money_management_app/models/enums.dart';

part 'm_category.g.dart';

@JsonSerializable()
class MCategory {
  MCategory(
    this.id, {
    this.name,
    this.categoryType,
    this.icon,
  });

  factory MCategory.fromJson(Map<String, dynamic> json) => _$MCategoryFromJson(json);

  int? id;
  String? name;
  CategoryType? categoryType;
  String? icon;

  Map<String, dynamic> toJson() => _$MCategoryToJson(this);
}
