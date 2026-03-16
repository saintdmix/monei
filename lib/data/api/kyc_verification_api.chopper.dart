// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'kyc_verification_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$KycVerificationApiService extends KycVerificationApiService {
  _$KycVerificationApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = KycVerificationApiService;

  @override
  Future<Response<dynamic>> getKycStatus() {
    final Uri $url = Uri.parse('/api/v1/kyc/status');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> submitNinTier2(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/kyc/submit-nin');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> submitBvnTier3(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/kyc/submit-bvn');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> uploadKycDocument(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/kyc/upload-document');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> checkTierUpgradeEligibility(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/kyc/check-eligibility');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getTierTransactionLimits() {
    final Uri $url = Uri.parse('/api/v1/kyc/limits');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
