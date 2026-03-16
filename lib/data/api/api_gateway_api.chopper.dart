// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'api_gateway_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ApiGatewayApiService extends ApiGatewayApiService {
  _$ApiGatewayApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ApiGatewayApiService;

  @override
  Future<Response<dynamic>> createApiClient(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> listApiClients() {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getApiClientDetails(String id) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateApiClient(
    String id,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients/${id}');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteApiClient(String id) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients/${id}');
    final Request $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> regenerateApiKeys(
    String id,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse(
      '/api/v1/api-gateway/clients/${id}/regenerate-keys',
    );
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
