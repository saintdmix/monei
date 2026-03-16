import 'package:chopper/chopper.dart';

part 'bills_payment_api.chopper.dart';

@ChopperApi()
abstract class BillsPaymentApiService extends ChopperService {
  static BillsPaymentApiService create([ChopperClient? client]) =>
      _$BillsPaymentApiService(client);

  /// List electricity DISCOs
  @GET(path: '/api/v1/bills/discovery/electricity-operators')
  Future<Response> listElectricityDiscos();

  /// Get biller items
  @GET(path: '/api/v1/bills/discovery/biller-items/{category}/{billerName}')
  Future<Response> getBillerItems(
    @Path('category') String category,
    @Path('billerName') String billerName,
  );

  /// Get electricity billers with codes
  @GET(path: '/api/v1/bills/billers/electricity')
  Future<Response> getElectricityBillersWithCodes();

  /// Get biller items (legacy)
  @GET(path: '/api/v1/bills/get-biller-items/{category}/{billerName}')
  Future<Response> getBillerItemsLegacy(
    @Path('category') String category,
    @Path('billerName') String billerName,
  );

  /// Validate customer details
  @POST(path: '/api/v1/bills/validation/customer')
  Future<Response> validateCustomerDetails(@Body() Map<String, dynamic> body);

  /// Validate bill (legacy)
  @POST(path: '/api/v1/bills/validate')
  Future<Response> validateBillLegacy(@Body() Map<String, dynamic> body);

  /// Buy airtime
  @POST(path: '/api/v1/bills/pay/airtime')
  Future<Response> buyAirtime(@Body() Map<String, dynamic> body);

  /// Buy mobile data
  @POST(path: '/api/v1/bills/pay/data')
  Future<Response> buyMobileData(@Body() Map<String, dynamic> body);

  /// Pay electricity bill
  @POST(path: '/api/v1/bills/pay/electricity')
  Future<Response> payElectricityBill(@Body() Map<String, dynamic> body);

  /// Subscribe to cable TV
  @POST(path: '/api/v1/bills/pay/cable-tv')
  Future<Response> subscribeToCableTv(@Body() Map<String, dynamic> body);

  /// Bill transaction history
  @GET(path: '/api/v1/bills/records')
  Future<Response> billTransactionHistory({
    @Query('type') String? type,
    @Query('status') String? status,
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  /// Get bill transaction by reference
  @GET(path: '/api/v1/bills/records/reference/{reference}')
  Future<Response> getBillTransactionByReference(
    @Path('reference') String reference,
  );

  /// Generate bill receipt
  @GET(path: '/api/v1/bills/records/receipt/{transactionId}')
  Future<Response> generateBillReceipt(
    @Path('transactionId') String transactionId,
  );
}
