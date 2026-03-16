import 'package:chopper/chopper.dart';

part 'customers_api.chopper.dart';

@ChopperApi()
abstract class CustomersApiService extends ChopperService {
  static CustomersApiService create([ChopperClient? client]) =>
      _$CustomersApiService(client);

  /// Create a customer
  @POST(path: '/api/v1/customers/{businessId}')
  Future<Response> createACustomer(@Path('businessId') String businessId, @Body() Map<String, dynamic> body);

  /// List business customers
  @GET(path: '/api/v1/customers/{businessId}')
  Future<Response> listBusinessCustomers(@Path('businessId') String businessId);

  /// Get a customer
  @GET(path: '/api/v1/customers/{businessId}/{customerId}')
  Future<Response> getACustomer(@Path('businessId') String businessId, @Path('customerId') String customerId);

  /// Update a customer
  @PATCH(path: '/api/v1/customers/{businessId}/{customerId}')
  Future<Response> updateACustomer(@Path('businessId') String businessId, @Path('customerId') String customerId, @Body() Map<String, dynamic> body);

  /// Disable a customer
  @PATCH(path: '/api/v1/customers/{businessId}/{customerId}/disable')
  Future<Response> disableACustomer(@Path('businessId') String businessId, @Path('customerId') String customerId, @Body() Map<String, dynamic> body);
}
