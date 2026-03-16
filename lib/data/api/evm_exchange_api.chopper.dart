// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'evm_exchange_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$EvmExchangeApiService extends EvmExchangeApiService {
  _$EvmExchangeApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = EvmExchangeApiService;

  @override
  Future<Response<dynamic>> getQuoteNativeErc20(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/price/native-to-token');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> swapNativeErc20(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/native-to-token');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getQuoteErc20Erc20(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/price/token-to-token');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> swapErc20Erc20(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/token-to-token');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getQuoteErc20Native(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/price/token-to-native');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> swapErc20Native(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/token-to-native');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
