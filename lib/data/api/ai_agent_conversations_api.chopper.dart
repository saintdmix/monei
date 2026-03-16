// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'ai_agent_conversations_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AiAgentConversationsApiService
    extends AiAgentConversationsApiService {
  _$AiAgentConversationsApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AiAgentConversationsApiService;

  @override
  Future<Response<dynamic>> getAllConversations() {
    final Uri $url = Uri.parse('/api/v1/agent/conversations');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> chatWithMrMoneiAiAgent(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getConversationMessages(String conversationId) {
    final Uri $url = Uri.parse(
      '/api/v1/agent/conversations/${conversationId}/messages',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> initializeANewConversation(
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations/init-conversation');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteConversation(String conversationId) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations/${conversationId}');
    final Request $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> pinUnpinConversation(
    String conversationId,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse(
      '/api/v1/agent/conversations/${conversationId}/pin',
    );
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> streamAiResponseSse(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations/stream');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> voiceChatWithAiAgent({
    required String conversationId,
    required MultipartFile audioFile,
  }) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations/voice');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>('conversationId', conversationId),
      PartValueFile<MultipartFile>('audio', audioFile),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
