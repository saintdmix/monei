import 'package:chopper/chopper.dart';

part 'chat_settings_api.chopper.dart';

@ChopperApi()
abstract class ChatSettingsApiService extends ChopperService {
  static ChatSettingsApiService create([ChopperClient? client]) =>
      _$ChatSettingsApiService(client);

  /// Get chat settings
  @GET(path: '/api/v1/chat-settings')
  Future<Response> getChatSettings();

  /// Update chat settings
  @PUT(path: '/api/v1/chat-settings')
  Future<Response> updateChatSettings(@Body() Map<String, dynamic> body);

  /// Reset chat settings
  @POST(path: '/api/v1/chat-settings/reset')
  Future<Response> resetChatSettings(@Body() Map<String, dynamic> body);

  /// Get supported networks config
  @GET(path: '/api/v1/chat-settings/supported-networks')
  Future<Response> getSupportedNetworksConfig();
}
