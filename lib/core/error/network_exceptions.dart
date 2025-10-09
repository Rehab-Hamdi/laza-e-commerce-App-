import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../features/auth/data/models/register_errors.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;
  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest(
    String reason, {
    RegisterErrorsModel? errorModel,
  }) = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;
  const factory NetworkExceptions.internalServerError(String reason) =
      InternalServerError;
  const factory NetworkExceptions.defaultError(String reason) = DefaultError;

  // ✅ Updated
  static NetworkExceptions getDioException(Object error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          return const NetworkExceptions.defaultError("⏱ Connection Timeout");

        case DioExceptionType.cancel:
          return const NetworkExceptions.requestCancelled();

        // ✅ Better handling for unknown
        case DioExceptionType.unknown:
          final msg = error.message ?? "⚠️ Unexpected Network Error";
          return NetworkExceptions.defaultError(msg);

        case DioExceptionType.badResponse:
          final response = error.response;
          if (response?.data != null) {
            try {
              var data = response!.data;

              // ✅ If it's plain text (e.g. "OTP is valid.")
              if (data is String && !data.trim().startsWith('{')) {
                return NetworkExceptions.badRequest(data.trim());
              }

              if (data is String) {
                data = jsonDecode(data);
              }

              if (data is Map<String, dynamic>) {
                try {
                  final model = RegisterErrorsModel.fromJson(data);
                  final allErrors = [
                    ...(model.errors?.email ?? []),
                    ...(model.errors?.password ?? []),
                    ...(model.errors?.firstName ?? []),
                    ...(model.errors?.lastName ?? []),
                  ];

                  if (allErrors.isNotEmpty) {
                    return NetworkExceptions.badRequest(
                      allErrors.join('\n'),
                      errorModel: model,
                    );
                  }

                  if (model.message != null && model.message!.isNotEmpty) {
                    return NetworkExceptions.badRequest(
                      model.message!,
                      errorModel: model,
                    );
                  }
                } catch (_) {}

                // fallback for generic errors
                if (data.containsKey('errors')) {
                  final errors = data['errors'] as Map<String, dynamic>;
                  final allErrors = errors.values
                      .expand((v) => v is List ? v : [v])
                      .map((e) => e.toString())
                      .join('\n');
                  return NetworkExceptions.badRequest(allErrors);
                }

                if (data.containsKey('message')) {
                  return NetworkExceptions.badRequest(
                    data['message'].toString(),
                  );
                }
              }

              return NetworkExceptions.defaultError(response.data.toString());
            } catch (e) {
              final raw = response?.data?.toString() ?? 'Unknown error';
              return NetworkExceptions.defaultError('⚠️ $raw');
            }
          } else {
            return const NetworkExceptions.defaultError('⚠️ No Response Data');
          }

        default:
          return const NetworkExceptions.defaultError('⚠️ Unexpected Error');
      }
    } else {
      return const NetworkExceptions.defaultError('⚠️ Unexpected Error');
    }
  }

  static String getErrorMessage(NetworkExceptions ex) {
    return ex.when(
      requestCancelled: () => "Request Cancelled",
      unauthorizedRequest: (reason) => "Unauthorized: $reason",
      badRequest: (reason, errorModel) => reason,
      notFound: (reason) => "Not Found: $reason",
      internalServerError: (reason) => "Server Error: $reason",
      defaultError: (reason) => reason,
    );
  }
}
