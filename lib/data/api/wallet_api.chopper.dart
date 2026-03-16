// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'wallet_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$WalletApiService extends WalletApiService {
  _$WalletApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = WalletApiService;

  @override
  Future<Response<dynamic>> getWalletCryptoPortfolio({int? chainId}) {
    final Uri $url = Uri.parse('/api/v1/wallet/me');
    final Map<String, dynamic> $params = <String, dynamic>{'chainId': chainId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getNairaWallet() {
    final Uri $url = Uri.parse('/api/v1/wallet/naira-wallet');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createVirtualAccount(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/wallet/virtual-account');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> initiateADeposit(
    Map<String, dynamic> body, {
    String? method,
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit');
    final Map<String, dynamic> $params = <String, dynamic>{'method': method};
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> depositWithSavedPaymentMethod(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit/payment-method');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> authorizeAPendingCharge(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit/authorize');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> generateHostedPaymentLink(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit/payment-link');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> checkDepositStatus(String reference) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit/status/${reference}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> sendFundsToABankAccount(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/wallet/payout/bank-transfer');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> p2pInternalTransfer(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/wallet/payout/transfer');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> listSupportedBanks() {
    final Uri $url = Uri.parse('/api/v1/wallet/utils/banks');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> resolveBankAccount(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/wallet/utils/verify-bank-account');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBankCodeByName({String? name}) {
    final Uri $url = Uri.parse('/api/v1/wallet/utils/bank-code');
    final Map<String, dynamic> $params = <String, dynamic>{'name': name};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fundWalletWithNaira(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/wallet/user/fund-wallet');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAvailableBanksForWithdrawal() {
    final Uri $url = Uri.parse('/api/v1/wallet/get-banks');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBankDataWithBankName({String? name}) {
    final Uri $url = Uri.parse('/api/v1/wallet/get-bank-code');
    final Map<String, dynamic> $params = <String, dynamic>{'name': name};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> verifyBankAccount(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/wallet/verify-bank-account');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> makeAWithdrawalToANairaAccount(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/wallet/withdrawals');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> transferFundsToAnotherUser(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/wallet/peer-transfer');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
