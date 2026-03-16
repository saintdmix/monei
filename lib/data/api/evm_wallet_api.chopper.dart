// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'evm_wallet_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$EvmWalletApiService extends EvmWalletApiService {
  _$EvmWalletApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = EvmWalletApiService;

  @override
  Future<Response<dynamic>> getSupportedBlockchainNetworks() {
    final Uri $url = Uri.parse('/api/v1/evm/networks');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getNativeTokenBalance({int? chainId}) {
    final Uri $url = Uri.parse('/api/v1/evm/balance/native');
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
  Future<Response<dynamic>> getErc20TokenBalance({
    String? tokenAddress,
    int? chainId,
  }) {
    final Uri $url = Uri.parse('/api/v1/evm/balance/token');
    final Map<String, dynamic> $params = <String, dynamic>{
      'tokenAddress': tokenAddress,
      'chainId': chainId,
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
  Future<Response<dynamic>> getEvmPortfolio(String chainId) {
    final Uri $url = Uri.parse('/api/v1/evm/portfolio/${chainId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> sendNativeToken(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/evm/send/native');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> sendErc20Token(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/evm/send/token');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
