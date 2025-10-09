// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpErrorModel _$OtpErrorModelFromJson(Map<String, dynamic> json) =>
    OtpErrorModel(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtpErrorModelToJson(OtpErrorModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'errors': instance.errors,
    };

Errors _$ErrorsFromJson(Map<String, dynamic> json) => Errors(
  email: (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
  otp: (json['otp'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{
  'email': instance.email,
  'otp': instance.otp,
};
