// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterErrorsModel _$RegisterErrorsModelFromJson(Map<String, dynamic> json) =>
    RegisterErrorsModel(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      errors: json['errors'] == null
          ? null
          : ErrorsModel.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterErrorsModelToJson(
  RegisterErrorsModel instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'errors': instance.errors,
};

ErrorsModel _$ErrorsModelFromJson(Map<String, dynamic> json) => ErrorsModel(
  email: (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
  password: (json['password'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  firstName: (json['firstName'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  lastName: (json['lastName'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ErrorsModelToJson(ErrorsModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
