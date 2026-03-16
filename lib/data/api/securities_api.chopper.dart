// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'securities_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SecuritiesApiService extends SecuritiesApiService {
  _$SecuritiesApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SecuritiesApiService;

  @override
  Future<Response<dynamic>> syncAvailableStocksFromStox(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/securities/stocks/sync');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAvailableStocks() {
    final Uri $url = Uri.parse('/api/v1/securities/stocks');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getStockDetails(String ticker) {
    final Uri $url = Uri.parse('/api/v1/securities/stocks/${ticker}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> buyTokenizedStock(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/securities/stocks/orders');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getUserStockHoldings() {
    final Uri $url = Uri.parse('/api/v1/securities/users/me/holdings');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getSpecificStockHolding(String ticker) {
    final Uri $url = Uri.parse(
      '/api/v1/securities/users/me/holdings/${ticker}',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getStoxOrders() {
    final Uri $url = Uri.parse('/api/v1/securities/integrations/stox/orders');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
