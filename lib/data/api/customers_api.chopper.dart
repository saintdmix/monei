// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'customers_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CustomersApiService extends CustomersApiService {
  _$CustomersApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CustomersApiService;

  @override
  Future<Response<dynamic>> createACustomer(
    String businessId,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/customers/${businessId}');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> listBusinessCustomers(String businessId) {
    final Uri $url = Uri.parse('/api/v1/customers/${businessId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getACustomer(String businessId, String customerId) {
    final Uri $url = Uri.parse('/api/v1/customers/${businessId}/${customerId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateACustomer(
    String businessId,
    String customerId,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/customers/${businessId}/${customerId}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> disableACustomer(
    String businessId,
    String customerId,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse(
      '/api/v1/customers/${businessId}/${customerId}/disable',
    );
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
