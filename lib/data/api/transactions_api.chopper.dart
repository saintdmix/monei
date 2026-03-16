// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'transactions_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$TransactionsApiService extends TransactionsApiService {
  _$TransactionsApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = TransactionsApiService;

  @override
  Future<Response<dynamic>> getAllUserTransactions({
    int? page,
    int? limit,
    String? status,
    String? type,
    double? minAmount,
    double? maxAmount,
    String? currency,
    String? narration,
    String? reference,
    String? startDate,
    String? endDate,
    String? sortBy,
    String? sortOrder,
  }) {
    final Uri $url = Uri.parse('/api/v1/transactions/user');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
      'status': status,
      'type': type,
      'minAmount': minAmount,
      'maxAmount': maxAmount,
      'currency': currency,
      'narration': narration,
      'reference': reference,
      'startDate': startDate,
      'endDate': endDate,
      'sortBy': sortBy,
      'sortOrder': sortOrder,
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
  Future<Response<dynamic>> getTransactionById(String id) {
    final Uri $url = Uri.parse('/api/v1/transactions/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getTransactionByReference(String reference) {
    final Uri $url = Uri.parse('/api/v1/transactions/reference/${reference}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> flutterwaveWebhookCallback(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse(
      '/api/v1/transactions/flutterwave-transaction-callback',
    );
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> flutterwaveTxCallbackAlternate(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/transactions/flw-tx-callback');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
