// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'beneficiaries_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$BeneficiariesApiService extends BeneficiariesApiService {
  _$BeneficiariesApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = BeneficiariesApiService;

  @override
  Future<Response<dynamic>> createABeneficiary(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllBeneficiaries() {
    final Uri $url = Uri.parse('/api/v1/beneficiaries');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getABeneficiary(String id) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateABeneficiary(
    String id,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries/${id}');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteABeneficiary(String type, String name) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries/${type}/${name}');
    final Request $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> transferToABeneficiary(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries/transfer');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
