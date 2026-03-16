// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'bills_payment_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$BillsPaymentApiService extends BillsPaymentApiService {
  _$BillsPaymentApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = BillsPaymentApiService;

  @override
  Future<Response<dynamic>> listElectricityDiscos() {
    final Uri $url = Uri.parse('/api/v1/bills/discovery/electricity-operators');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBillerItems(String category, String billerName) {
    final Uri $url = Uri.parse(
      '/api/v1/bills/discovery/biller-items/${category}/${billerName}',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getElectricityBillersWithCodes() {
    final Uri $url = Uri.parse('/api/v1/bills/billers/electricity');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBillerItemsLegacy(
    String category,
    String billerName,
  ) {
    final Uri $url = Uri.parse(
      '/api/v1/bills/get-biller-items/${category}/${billerName}',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> validateCustomerDetails(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/bills/validation/customer');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> validateBillLegacy(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/bills/validate');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> buyAirtime(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/bills/pay/airtime');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> buyMobileData(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/bills/pay/data');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> payElectricityBill(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/bills/pay/electricity');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> subscribeToCableTv(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/bills/pay/cable-tv');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> billTransactionHistory({
    String? type,
    String? status,
    int? page,
    int? limit,
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/records');
    final Map<String, dynamic> $params = <String, dynamic>{
      'type': type,
      'status': status,
      'page': page,
      'limit': limit,
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
  Future<Response<dynamic>> getBillTransactionByReference(String reference) {
    final Uri $url = Uri.parse('/api/v1/bills/records/reference/${reference}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> generateBillReceipt(String transactionId) {
    final Uri $url = Uri.parse(
      '/api/v1/bills/records/receipt/${transactionId}',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
