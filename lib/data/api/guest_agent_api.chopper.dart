// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'guest_agent_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$GuestAgentApiService extends GuestAgentApiService {
  _$GuestAgentApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = GuestAgentApiService;

  @override
  Future<Response<dynamic>> guestChatStreamSse(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/guest-agent/stream');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
