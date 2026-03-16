// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'offramp_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$OfframpApiService extends OfframpApiService {
  _$OfframpApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = OfframpApiService;

  @override
  Future<Response<dynamic>> getSupportedPayoutBanks() {
    final Uri $url = Uri.parse('/api/v1/offramp/payouts/banks');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> verifyBankAccount(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/offramp/payouts/verify');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> listSupportedOfframpAssets() {
    final Uri $url = Uri.parse('/api/v1/offramp/exchange/assets');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCryptoToFiatQuote({
    String? token,
    String? network,
    String? amount,
    String? fiat,
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/exchange/quote');
    final Map<String, dynamic> $params = <String, dynamic>{
      'token': token,
      'network': network,
      'amount': amount,
      'fiat': fiat,
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
  Future<Response<dynamic>> initiateCryptoToFiatOrder(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/offramp/exchange/initiate');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getOfframpTransactionHistory({
    int? limit,
    int? page,
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/ledger/history');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'page': page,
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
  Future<Response<dynamic>> trackOfframpTransaction(String reference) {
    final Uri $url = Uri.parse('/api/v1/offramp/ledger/status/${reference}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
