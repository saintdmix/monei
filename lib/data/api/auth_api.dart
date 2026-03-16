import 'package:chopper/chopper.dart';

part 'auth_api.chopper.dart';

@ChopperApi()
abstract class AuthApiService extends ChopperService {
  static AuthApiService create([ChopperClient? client]) =>
      _$AuthApiService(client);

  /// Check if user exists
  @GET(path: '/api/v1/auth/check-exists/{phone}')
  Future<Response> checkIfUserExists(@Path('phone') String phone);

  /// Login a user
  @POST(path: '/api/v1/auth/auth/login')
  Future<Response> loginAUser(@Body() Map<String, dynamic> body);

  /// Register a user
  @POST(path: '/api/v1/auth/auth/register')
  Future<Response> registerAUser(@Body() Map<String, dynamic> body);

  /// Send verification email
  @POST(path: '/api/v1/auth/send-verification-email/{email}')
  Future<Response> sendVerificationEmail(@Path('email') String email, @Body() Map<String, dynamic> body);

  /// Verify user email
  @POST(path: '/api/v1/auth/verify/{token}/{email}')
  Future<Response> verifyUserEmail(@Path('token') String token, @Path('email') String email, @Body() Map<String, dynamic> body);

  /// Request PIN reset
  @POST(path: '/api/v1/auth/request-reset-pin/{email}')
  Future<Response> requestPinReset(@Path('email') String email, @Body() Map<String, dynamic> body);

  /// Reset user PIN
  @POST(path: '/api/v1/auth/reset-pin')
  Future<Response> resetUserPin(@Body() Map<String, dynamic> body);

  /// Change user PIN
  @PUT(path: '/api/v1/auth/change-pin')
  Future<Response> changeUserPin(@Body() Map<String, dynamic> body);

  /// Set transaction PIN
  @PUT(path: '/api/v1/auth/set-transaction-pin')
  Future<Response> setTransactionPin(@Body() Map<String, dynamic> body);

  /// Change transaction PIN
  @PUT(path: '/api/v1/auth/change-transaction-pin')
  Future<Response> changeTransactionPin(@Body() Map<String, dynamic> body);

  /// Update user email
  @PUT(path: '/api/v1/auth/update-email')
  Future<Response> updateUserEmail(@Body() Map<String, dynamic> body);

  /// Reset transaction PIN
  @PUT(path: '/api/v1/auth/reset-transaction-pin')
  Future<Response> resetTransactionPin(@Body() Map<String, dynamic> body);
}
