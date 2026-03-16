// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'solana_exchange_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SolanaExchangeApiService extends SolanaExchangeApiService {
  _$SolanaExchangeApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SolanaExchangeApiService;

  @override
  Future<Response<dynamic>> getQuoteSolSplToken({
    String? outputMint,
    String? amount,
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/quote/sol-to-token');
    final Map<String, dynamic> $params = <String, dynamic>{
      'outputMint': outputMint,
      'amount': amount,
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
  Future<Response<dynamic>> getQuoteSplTokenSol({
    String? inputMint,
    String? amount,
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/quote/token-to-sol');
    final Map<String, dynamic> $params = <String, dynamic>{
      'inputMint': inputMint,
      'amount': amount,
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
  Future<Response<dynamic>> getQuoteSplTokenSplToken({
    String? inputMint,
    String? outputMint,
    String? amount,
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/quote/token-to-token');
    final Map<String, dynamic> $params = <String, dynamic>{
      'inputMint': inputMint,
      'outputMint': outputMint,
      'amount': amount,
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
  Future<Response<dynamic>> swapSolSplToken(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/swap-sol-to-token');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> swapSplTokenSplToken(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/swap-token-to-token');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> swapSplTokenSol(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/swap-token-to-sol');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
