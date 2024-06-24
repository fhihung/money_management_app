import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm_user.g.dart';

@JsonSerializable()
class MUser {
  MUser(
    this.id,
    this.name,
    this.role,
    this.password,
    this.address,
    this.phoneNumber,
  );

  factory MUser.fromJson(Map<String, dynamic> json) => _$MUserFromJson(json);

  int? id;
  String? name;
  String? password;
  String? role;
  String? address;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  // final DateTime createdAt;
  // final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$MUserToJson(this);
}
