import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/otp.dart';
import '../models/register.dart';

part 'auth_web_services.g.dart';

@RestApi(baseUrl: 'https://accessories-eshop.runasp.net/api/auth/')
abstract class AuthWebServices {
  static Dio createAndSetUpDio() {
    final dio = Dio();

    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    );

    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        error: true,
        responseBody: true,
        request: true,
      ),
    );

    return dio;
  }

  factory AuthWebServices(Dio dio, {String? baseUrl}) = _AuthWebServices;

  /// ✅ Register
  @POST('register')
  Future<String> register(@Body() RegisterModel registerModel);

  @POST('validate-otp')
  Future<dynamic> verifyOtp(@Body() Map<String, dynamic> otpJson);

  @POST('resend-otp')
  Future<dynamic> resendOtp(@Body() Map<String, dynamic> emailJson);
}
