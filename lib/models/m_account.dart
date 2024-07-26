import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm_account.g.dart';

@JsonSerializable()
class MAccount {
  MAccount(
    this.id, {
    this.name,
    this.accountNumber,
    this.balance,
    this.alias,
  });

  factory MAccount.fromJson(Map<String, dynamic> json) => _$MAccountFromJson(json);

  int? id;
  String? name;
  String? accountNumber;
  String? balance;
  String? alias;

  Map<String, dynamic> toJson() => _$MAccountToJson(this);
}
