// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'auth_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AuthApiService extends AuthApiService {
  _$AuthApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AuthApiService;

  @override
  Future<Response<dynamic>> checkIfUserExists(String phone) {
    final Uri $url = Uri.parse('/api/v1/auth/check-exists/${phone}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> loginAUser(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/auth/auth/login');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> registerAUser(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/auth/auth/register');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> sendVerificationEmail(
    String email,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/auth/send-verification-email/${email}');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> verifyUserEmail(
    String token,
    String email,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/auth/verify/${token}/${email}');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> requestPinReset(
    String email,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/auth/request-reset-pin/${email}');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> resetUserPin(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/auth/reset-pin');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> changeUserPin(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/auth/change-pin');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> setTransactionPin(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/auth/set-transaction-pin');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> changeTransactionPin(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/auth/change-transaction-pin');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateUserEmail(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/auth/update-email');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> resetTransactionPin(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/auth/reset-transaction-pin');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
