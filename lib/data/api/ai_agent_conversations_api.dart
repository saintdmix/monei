import 'package:chopper/chopper.dart';
import 'package:http/http.dart' show MultipartFile;

part 'ai_agent_conversations_api.chopper.dart';

@ChopperApi()
abstract class AiAgentConversationsApiService extends ChopperService {
  static AiAgentConversationsApiService create([ChopperClient? client]) =>
      _$AiAgentConversationsApiService(client);

  /// Get all conversations
  @GET(path: '/api/v1/agent/conversations')
  Future<Response> getAllConversations();

  /// Chat with Mr. Monei AI Agent
  @POST(path: '/api/v1/agent/conversations')
  Future<Response> chatWithMrMoneiAiAgent(@Body() Map<String, dynamic> body);

  /// Get conversation messages
  @GET(path: '/api/v1/agent/conversations/{conversationId}/messages')
  Future<Response> getConversationMessages(
    @Path('conversationId') String conversationId,
  );

  /// Initialize a new conversation
  @POST(path: '/api/v1/agent/conversations/init-conversation')
  Future<Response> initializeANewConversation(
    @Body() Map<String, dynamic> body,
  );

  /// Delete conversation
  @DELETE(path: '/api/v1/agent/conversations/{conversationId}')
  Future<Response> deleteConversation(
    @Path('conversationId') String conversationId,
  );

  /// Pin/unpin conversation
  @PATCH(path: '/api/v1/agent/conversations/{conversationId}/pin')
  Future<Response> pinUnpinConversation(
    @Path('conversationId') String conversationId,
    @Body() Map<String, dynamic> body,
  );

  /// Stream AI response (SSE)
  @POST(path: '/api/v1/agent/conversations/stream')
  Future<Response> streamAiResponseSse(@Body() Map<String, dynamic> body);

  /// Voice chat with AI agent
  @POST(path: '/api/v1/agent/conversations/voice')
  @multipart
  Future<Response> voiceChatWithAiAgent({
    @Part('conversationId') required String conversationId,
    @PartFile('audio') required MultipartFile audioFile,
  });
}
