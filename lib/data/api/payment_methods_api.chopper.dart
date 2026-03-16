// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'payment_methods_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$PaymentMethodsApiService extends PaymentMethodsApiService {
  _$PaymentMethodsApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = PaymentMethodsApiService;

  @override
  Future<Response<dynamic>> syncVirtualAccountsAsPaymentMethods(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/payment-methods/sync');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllPaymentMethods({String? subWalletId}) {
    final Uri $url = Uri.parse('/api/v1/payment-methods');
    final Map<String, dynamic> $params = <String, dynamic>{
      'subWalletId': subWalletId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createAPaymentMethod(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/payment-methods');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getPaymentMethodDetails(String id) {
    final Uri $url = Uri.parse('/api/v1/payment-methods/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteAPaymentMethod(String id) {
    final Uri $url = Uri.parse('/api/v1/payment-methods/${id}');
    final Request $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> setDefaultPaymentMethod(
    String id,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/payment-methods/${id}/default');
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
