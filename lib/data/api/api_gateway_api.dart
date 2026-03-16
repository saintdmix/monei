import 'package:chopper/chopper.dart';

part 'api_gateway_api.chopper.dart';

@ChopperApi()
abstract class ApiGatewayApiService extends ChopperService {
  static ApiGatewayApiService create([ChopperClient? client]) =>
      _$ApiGatewayApiService(client);

  /// Create API client
  @POST(path: '/api/v1/api-gateway/clients')
  Future<Response> createApiClient(@Body() Map<String, dynamic> body);

  /// List API clients
  @GET(path: '/api/v1/api-gateway/clients')
  Future<Response> listApiClients();

  /// Get API client details
  @GET(path: '/api/v1/api-gateway/clients/{id}')
  Future<Response> getApiClientDetails(@Path('id') String id);

  /// Update API client
  @PUT(path: '/api/v1/api-gateway/clients/{id}')
  Future<Response> updateApiClient(@Path('id') String id, @Body() Map<String, dynamic> body);

  /// Delete API client
  @DELETE(path: '/api/v1/api-gateway/clients/{id}')
  Future<Response> deleteApiClient(@Path('id') String id);

  /// Regenerate API keys
  @POST(path: '/api/v1/api-gateway/clients/{id}/regenerate-keys')
  Future<Response> regenerateApiKeys(@Path('id') String id, @Body() Map<String, dynamic> body);
}
