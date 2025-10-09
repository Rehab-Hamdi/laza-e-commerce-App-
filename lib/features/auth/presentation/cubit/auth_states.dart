import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_states.freezed.dart';

@freezed
class AuthStates with _$AuthStates {
  const factory AuthStates.initial() = Initial;
  const factory AuthStates.loading() = Loading;

  const factory AuthStates.success(String message) = Success;

  const factory AuthStates.otpVerifiedSuccess(String message) =
      OtpVerifiedSuccess;

  const factory AuthStates.otpResentSuccess(String message) = OtpResentSuccess;

  const factory AuthStates.error(String error) = Error;

  const factory AuthStates.fieldErrors(Map<String, List<String>> errors) =
      FieldErrors;
}
