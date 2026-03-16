// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'bill_payment_beneficiaries_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$BillPaymentBeneficiariesApiService
    extends BillPaymentBeneficiariesApiService {
  _$BillPaymentBeneficiariesApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = BillPaymentBeneficiariesApiService;

  @override
  Future<Response<dynamic>> getAllBillBeneficiaries() {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getFavoriteBeneficiaries() {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/favorites');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> saveMobileBeneficiary(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/mobile');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> saveElectricityBeneficiary(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/electricity');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> saveCableTvBeneficiary(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/cable-tv');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateBillBeneficiary(
    String id,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/${id}');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteBillBeneficiary(String id) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/${id}');
    final Request $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
