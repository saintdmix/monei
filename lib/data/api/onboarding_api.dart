import 'package:chopper/chopper.dart';

part 'onboarding_api.chopper.dart';

@ChopperApi()
abstract class OnboardingApiService extends ChopperService {
  static OnboardingApiService create([ChopperClient? client]) =>
      _$OnboardingApiService(client);

  /// Google OAuth redirect
  @GET(path: '/api/v1/onboarding/google')
  Future<Response> googleOauthRedirect();

  /// Request email signup
  @POST(path: '/api/v1/onboarding/request-signup')
  Future<Response> requestEmailSignup(@Body() Map<String, dynamic> body);

  /// Verify email OTP
  @POST(path: '/api/v1/onboarding/verify-email-otp')
  Future<Response> verifyEmailOtp(@Body() Map<String, dynamic> body);

  /// Complete user profile
  @PUT(path: '/api/v1/onboarding/complete-profile')
  Future<Response> completeUserProfile(@Body() Map<String, dynamic> body);

  /// Send phone OTP
  @POST(path: '/api/v1/onboarding/phone/send-otp')
  Future<Response> sendPhoneOtp(@Body() Map<String, dynamic> body);

  /// Verify phone OTP
  @POST(path: '/api/v1/onboarding/phone/verify-otp')
  Future<Response> verifyPhoneOtp(@Body() Map<String, dynamic> body);

  /// Get onboarding status
  @GET(path: '/api/v1/onboarding/onboarding-status')
  Future<Response> getOnboardingStatus();
}
