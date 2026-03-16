// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'solana_wallet_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SolanaWalletApiService extends SolanaWalletApiService {
  _$SolanaWalletApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SolanaWalletApiService;

  @override
  Future<Response<dynamic>> getSolanaWalletAddress() {
    final Uri $url = Uri.parse('/api/v1/solana/address');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getSolBalance({String? network}) {
    final Uri $url = Uri.parse('/api/v1/solana/balance');
    final Map<String, dynamic> $params = <String, dynamic>{'network': network};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getSplTokenBalance(
    String tokenMintAddress, {
    String? network,
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/solana/token-balance/${tokenMintAddress}',
    );
    final Map<String, dynamic> $params = <String, dynamic>{'network': network};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getSolanaPortfolio({String? network}) {
    final Uri $url = Uri.parse('/api/v1/solana/portfolio');
    final Map<String, dynamic> $params = <String, dynamic>{'network': network};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> transferSol(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/solana/transfer');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> transferSplToken(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/solana/transfer-token');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
