import 'package:chopper/chopper.dart';

part 'schedules_api.chopper.dart';

@ChopperApi()
abstract class SchedulesApiService extends ChopperService {
  static SchedulesApiService create([ChopperClient? client]) =>
      _$SchedulesApiService(client);

  /// Create scheduled payment
  @POST(path: '/api/v1/schedules')
  Future<Response> createScheduledPayment(@Body() Map<String, dynamic> body);

  /// Get all scheduled payments
  @GET(path: '/api/v1/schedules')
  Future<Response> getAllScheduledPayments();

  /// Get a scheduled payment
  @GET(path: '/api/v1/schedules/{id}')
  Future<Response> getAScheduledPayment(@Path('id') String id);

  /// Update a scheduled payment
  @PUT(path: '/api/v1/schedules/{id}')
  Future<Response> updateAScheduledPayment(@Path('id') String id, @Body() Map<String, dynamic> body);

  /// Cancel a scheduled payment
  @DELETE(path: '/api/v1/schedules/{id}')
  Future<Response> cancelAScheduledPayment(@Path('id') String id);
}
