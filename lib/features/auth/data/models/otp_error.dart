import 'package:json_annotation/json_annotation.dart';

part 'otp_error.g.dart';

@JsonSerializable()
class OtpErrorModel {
  int? statusCode;
  String? message;
  Errors? errors;

  OtpErrorModel({this.statusCode, this.message, this.errors});

  factory OtpErrorModel.fromJson(Map<String, dynamic> json) =>
      _$OtpErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$OtpErrorModelToJson(this);
}

@JsonSerializable()
class Errors {
  List<String>? email;
  List<String>? otp;

  Errors({this.email, this.otp});

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}
