import 'package:dio/dio.dart';
import 'package:laza/core/api/api_result.dart';
import 'package:laza/core/error/network_exceptions.dart';
import 'package:laza/features/auth/data/api_services/auth_web_services.dart';
import 'package:laza/features/auth/data/models/register.dart';
import '../models/otp.dart';
import '../models/otp_error.dart';

class AuthRepo {
  final AuthWebServices _service;

  AuthRepo(this._service);

  // ✅ Register
  Future<ApiResult<String>> register(RegisterModel model) async {
    try {
      final response = await _service.register(model);
      return ApiResult.success(response);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      final message = NetworkExceptions.getErrorMessage(exception);
      return ApiResult.failure(message, error: exception);
    }
  }

  // ✅ Verify OTP
  Future<ApiResult<String>> verifyOtp(OtpModel model) async {
    try {
      final response = await _service.verifyOtp(model.toJson());

      if (response is String) {
        return ApiResult.stringSuccess(response);
      }

      if (response is Map<String, dynamic>) {
        final errorMsg = response['message']?.toString() ?? "Invalid OTP";
        return ApiResult.failure(errorMsg);
      }

      return ApiResult.failure("Unexpected response format");
    } on DioException catch (e) {
      final responseData = e.response?.data;
      if (responseData is String) {
        return ApiResult.failure(responseData);
      }

      final networkError = NetworkExceptions.getDioException(e);
      final msg = NetworkExceptions.getErrorMessage(networkError);
      return ApiResult.failure(msg, error: networkError);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  // ✅ Resend OTP
  Future<ApiResult<String>> resendOtp(String email) async {
    try {
      final response = await _service.resendOtp({'email': email});

      if (response is String) {
        return ApiResult.success(response);
      }

      if (response is Map<String, dynamic>) {
        final message = response['message']?.toString() ?? "Unknown error";
        return ApiResult.failure(message);
      }

      return ApiResult.failure("Unexpected response type");
    } on DioException catch (e) {
      final responseData = e.response?.data;
      if (responseData is String) {
        return ApiResult.failure(responseData);
      }

      final networkError = NetworkExceptions.getDioException(e);
      final msg = NetworkExceptions.getErrorMessage(networkError);
      return ApiResult.failure(msg, error: networkError);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
