import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/api/api_result.dart';
import 'package:laza/core/error/network_exceptions.dart';
import 'package:laza/features/auth/data/models/otp.dart';
import 'package:laza/features/auth/data/models/register.dart';
import 'package:laza/features/auth/data/repo/auth_repo.dart';
import '../../validaion/validation.dart';
import 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  final AuthRepo _authRepo;

  AuthCubit(this._authRepo) : super(const AuthStates.initial());

  // ✅ Register
  Future<void> register(RegisterModel model) async {
    final localErrors = Validation().validateRegisterModel(model);
    if (localErrors.isNotEmpty) {
      emit(AuthStates.fieldErrors(localErrors));
      return;
    }

    emit(const AuthStates.loading());
    final result = await _authRepo.register(model);

    if (result.isSuccess) {
      emit(AuthStates.success(result.data ?? 'Registered successfully'));
    } else {
      final err = result.error;

      if (err is NetworkExceptions) {
        final badRequest = err.maybeWhen(
          badRequest: (reason, errorModel) => errorModel,
          orElse: () => null,
        );

        if (badRequest != null && badRequest.errors != null) {
          final errorsMap = <String, List<String>>{};

          if (badRequest.errors?.email != null) {
            errorsMap['email'] = badRequest.errors!.email!;
          }
          if (badRequest.errors?.password != null) {
            errorsMap['password'] = badRequest.errors!.password!;
          }
          if (badRequest.errors?.firstName != null) {
            errorsMap['firstName'] = badRequest.errors!.firstName!;
          }
          if (badRequest.errors?.lastName != null) {
            errorsMap['lastName'] = badRequest.errors!.lastName!;
          }

          if (errorsMap.isNotEmpty) {
            emit(AuthStates.fieldErrors(errorsMap));
            return;
          }
        }

        final msg = NetworkExceptions.getErrorMessage(err);
        emit(AuthStates.error(msg));
      } else {
        emit(AuthStates.error(result.message ?? 'Unknown error'));
      }
    }
  }

  Future<void> verifyOtp(OtpModel otpModel) async {
    emit(const AuthStates.loading());
    final result = await _authRepo.verifyOtp(otpModel);

    if (result.isSuccess) {
      emit(
        AuthStates.otpVerifiedSuccess(
          result.message ?? "OTP Verified Successfully",
        ),
      );
    } else {
      emit(AuthStates.error(result.message ?? "OTP Verification Failed"));
    }
  }

  Future<void> resendOtp(String email) async {
    emit(const AuthStates.loading());
    final result = await _authRepo.resendOtp(email);

    if (result.isSuccess) {
      emit(AuthStates.otpResentSuccess(result.message ?? "OTP Sent Again"));
    } else {
      emit(AuthStates.error(result.message ?? "Failed to resend OTP"));
    }
  }
}
