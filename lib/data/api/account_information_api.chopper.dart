// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'account_information_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AccountInformationApiService
    extends AccountInformationApiService {
  _$AccountInformationApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AccountInformationApiService;

  @override
  Future<Response<dynamic>> getCurrentUser() {
    final Uri $url = Uri.parse('/api/v1/user/me');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateUserProfile(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/user/update');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
