import 'package:chopper/chopper.dart';

part 'kyc_verification_api.chopper.dart';

@ChopperApi()
abstract class KycVerificationApiService extends ChopperService {
  static KycVerificationApiService create([ChopperClient? client]) =>
      _$KycVerificationApiService(client);

  /// Get KYC status
  @GET(path: '/api/v1/kyc/status')
  Future<Response> getKycStatus();

  /// Submit NIN (Tier 2)
  @POST(path: '/api/v1/kyc/submit-nin')
  Future<Response> submitNinTier2(@Body() Map<String, dynamic> body);

  /// Submit BVN (Tier 3)
  @POST(path: '/api/v1/kyc/submit-bvn')
  Future<Response> submitBvnTier3(@Body() Map<String, dynamic> body);

  /// Upload KYC document
  @POST(path: '/api/v1/kyc/upload-document')
  Future<Response> uploadKycDocument(@Body() Map<String, dynamic> body);

  /// Check tier upgrade eligibility
  @POST(path: '/api/v1/kyc/check-eligibility')
  Future<Response> checkTierUpgradeEligibility(@Body() Map<String, dynamic> body);

  /// Get tier transaction limits
  @GET(path: '/api/v1/kyc/limits')
  Future<Response> getTierTransactionLimits();
}
