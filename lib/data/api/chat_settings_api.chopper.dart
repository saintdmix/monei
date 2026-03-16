// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'chat_settings_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ChatSettingsApiService extends ChatSettingsApiService {
  _$ChatSettingsApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ChatSettingsApiService;

  @override
  Future<Response<dynamic>> getChatSettings() {
    final Uri $url = Uri.parse('/api/v1/chat-settings');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateChatSettings(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/chat-settings');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> resetChatSettings(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/chat-settings/reset');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getSupportedNetworksConfig() {
    final Uri $url = Uri.parse('/api/v1/chat-settings/supported-networks');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
