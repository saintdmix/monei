// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'onboarding_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$OnboardingApiService extends OnboardingApiService {
  _$OnboardingApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = OnboardingApiService;

  @override
  Future<Response<dynamic>> googleOauthRedirect() {
    final Uri $url = Uri.parse('/api/v1/onboarding/google');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> requestEmailSignup(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/onboarding/request-signup');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> verifyEmailOtp(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/onboarding/verify-email-otp');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> completeUserProfile(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/onboarding/complete-profile');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> sendPhoneOtp(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/onboarding/phone/send-otp');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> verifyPhoneOtp(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/onboarding/phone/verify-otp');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getOnboardingStatus() {
    final Uri $url = Uri.parse('/api/v1/onboarding/onboarding-status');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
