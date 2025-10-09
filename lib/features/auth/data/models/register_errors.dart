import 'package:json_annotation/json_annotation.dart';

part 'register_errors.g.dart';

@JsonSerializable()
class RegisterErrorsModel {
  int? statusCode;
  String? message;
  ErrorsModel? errors;

  RegisterErrorsModel({this.statusCode, this.message, this.errors});

  factory RegisterErrorsModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterErrorsModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RegisterErrorsModelToJson(this);
}

@JsonSerializable()
class ErrorsModel {
  List<String>? email;
  List<String>? password;
  List<String>? firstName;
  List<String>? lastName;

  ErrorsModel({this.email, this.password, this.firstName, this.lastName});

  factory ErrorsModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorsModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ErrorsModelToJson(this);
}
