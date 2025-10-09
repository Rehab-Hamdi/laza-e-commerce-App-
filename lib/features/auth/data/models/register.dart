import 'package:json_annotation/json_annotation.dart';

part 'register.g.dart';

@JsonSerializable()
class RegisterModel {
  String? email;
  String? password;
  String? firstName;
  String? lastName;

  RegisterModel({this.email, this.password, this.firstName, this.lastName});

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
