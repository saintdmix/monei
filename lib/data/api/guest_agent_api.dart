import 'package:chopper/chopper.dart';

part 'guest_agent_api.chopper.dart';

@ChopperApi()
abstract class GuestAgentApiService extends ChopperService {
  static GuestAgentApiService create([ChopperClient? client]) =>
      _$GuestAgentApiService(client);

  /// Guest chat stream (SSE)
  @POST(path: '/api/v1/guest-agent/stream')
  Future<Response> guestChatStreamSse(@Body() Map<String, dynamic> body);
}
