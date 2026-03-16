import 'package:chopper/chopper.dart';

part 'payment_methods_api.chopper.dart';

@ChopperApi()
abstract class PaymentMethodsApiService extends ChopperService {
  static PaymentMethodsApiService create([ChopperClient? client]) =>
      _$PaymentMethodsApiService(client);

  /// Sync virtual accounts as payment methods
  @POST(path: '/api/v1/payment-methods/sync')
  Future<Response> syncVirtualAccountsAsPaymentMethods(
    @Body() Map<String, dynamic> body,
  );

  /// Get all payment methods
  @GET(path: '/api/v1/payment-methods')
  Future<Response> getAllPaymentMethods({
    @Query('subWalletId') String? subWalletId,
  });

  /// Create a payment method
  @POST(path: '/api/v1/payment-methods')
  Future<Response> createAPaymentMethod(@Body() Map<String, dynamic> body);

  /// Get payment method details
  @GET(path: '/api/v1/payment-methods/{id}')
  Future<Response> getPaymentMethodDetails(@Path('id') String id);

  /// Delete a payment method
  @DELETE(path: '/api/v1/payment-methods/{id}')
  Future<Response> deleteAPaymentMethod(@Path('id') String id);

  /// Set default payment method
  @PATCH(path: '/api/v1/payment-methods/{id}/default')
  Future<Response> setDefaultPaymentMethod(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );
}
