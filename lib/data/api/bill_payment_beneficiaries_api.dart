import 'package:chopper/chopper.dart';

part 'bill_payment_beneficiaries_api.chopper.dart';

@ChopperApi()
abstract class BillPaymentBeneficiariesApiService extends ChopperService {
  static BillPaymentBeneficiariesApiService create([ChopperClient? client]) =>
      _$BillPaymentBeneficiariesApiService(client);

  /// Get all bill beneficiaries
  @GET(path: '/api/v1/bill-beneficiaries')
  Future<Response> getAllBillBeneficiaries();

  /// Get favorite beneficiaries
  @GET(path: '/api/v1/bill-beneficiaries/favorites')
  Future<Response> getFavoriteBeneficiaries();

  /// Save mobile beneficiary
  @POST(path: '/api/v1/bill-beneficiaries/mobile')
  Future<Response> saveMobileBeneficiary(@Body() Map<String, dynamic> body);

  /// Save electricity beneficiary
  @POST(path: '/api/v1/bill-beneficiaries/electricity')
  Future<Response> saveElectricityBeneficiary(@Body() Map<String, dynamic> body);

  /// Save cable TV beneficiary
  @POST(path: '/api/v1/bill-beneficiaries/cable-tv')
  Future<Response> saveCableTvBeneficiary(@Body() Map<String, dynamic> body);

  /// Update bill beneficiary
  @PUT(path: '/api/v1/bill-beneficiaries/{id}')
  Future<Response> updateBillBeneficiary(@Path('id') String id, @Body() Map<String, dynamic> body);

  /// Delete bill beneficiary
  @DELETE(path: '/api/v1/bill-beneficiaries/{id}')
  Future<Response> deleteBillBeneficiary(@Path('id') String id);
}
