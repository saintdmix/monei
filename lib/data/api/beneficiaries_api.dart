import 'package:chopper/chopper.dart';

part 'beneficiaries_api.chopper.dart';

@ChopperApi()
abstract class BeneficiariesApiService extends ChopperService {
  static BeneficiariesApiService create([ChopperClient? client]) =>
      _$BeneficiariesApiService(client);

  /// Create a beneficiary
  @POST(path: '/api/v1/beneficiaries')
  Future<Response> createABeneficiary(@Body() Map<String, dynamic> body);

  /// Get all beneficiaries
  @GET(path: '/api/v1/beneficiaries')
  Future<Response> getAllBeneficiaries();

  /// Get a beneficiary
  @GET(path: '/api/v1/beneficiaries/{id}')
  Future<Response> getABeneficiary(@Path('id') String id);

  /// Update a beneficiary
  @PUT(path: '/api/v1/beneficiaries/{id}')
  Future<Response> updateABeneficiary(@Path('id') String id, @Body() Map<String, dynamic> body);

  /// Delete a beneficiary
  @DELETE(path: '/api/v1/beneficiaries/{type}/{name}')
  Future<Response> deleteABeneficiary(@Path('type') String type, @Path('name') String name);

  /// Transfer to a beneficiary
  @POST(path: '/api/v1/beneficiaries/transfer')
  Future<Response> transferToABeneficiary(@Body() Map<String, dynamic> body);
}
