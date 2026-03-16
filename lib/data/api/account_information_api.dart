import 'package:chopper/chopper.dart';

part 'account_information_api.chopper.dart';

@ChopperApi()
abstract class AccountInformationApiService extends ChopperService {
  static AccountInformationApiService create([ChopperClient? client]) =>
      _$AccountInformationApiService(client);

  /// Get current user
  @GET(path: '/api/v1/user/me')
  Future<Response> getCurrentUser();

  /// Update user profile
  @PATCH(path: '/api/v1/user/update')
  Future<Response> updateUserProfile(@Body() Map<String, dynamic> body);
}
