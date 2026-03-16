import 'package:shared_preferences/shared_preferences.dart';
import '../../core/network/api_client.dart';
import '../../core/network/api_response.dart';
import '../models/user_model.dart';

/// Repository for authentication and onboarding API calls.
class AuthRepository {
  final ApiClient _api = ApiClient();

  // ── Auth ──

  /// Check if a user exists by phone.
  Future<ApiResponse<Map<String, dynamic>>> checkUserExists(
    String phone,
  ) async {
    final response = await _api.auth.checkIfUserExists(phone);
    return ApiResponse.fromResponse(response);
  }

  /// Login with email and PIN.
  Future<ApiResponse<UserModel>> login({
    required String email,
    required String pin,
  }) async {
    final response = await _api.auth.loginAUser({'email': email, 'pin': pin});
    if (response.isSuccessful && response.body != null) {
      final body = response.body as Map<String, dynamic>;
      final data = body['data'] as Map<String, dynamic>?;
      // Save token
      final token =
          data?['access_token'] ??
          data?['token'] ??
          data?['accessToken'] ??
          body['access_token'] ??
          body['token'] ??
          body['accessToken'];

      print('=== LOGIN RESPONSE DEBUG ===');
      print('Raw Body: $body');
      print('Extracted Token: $token');
      print('=============================');

      if (token != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('auth_token', token);
      } else {
        print(
          'CRITICAL: Token was null after login! SharedPreferences was NOT updated.',
        );
      }

      // Parse user
      final userMap = data?['user'] ?? body['user'] ?? data ?? {};
      final onboardingState =
          data?['onboardingState'] ?? body['onboardingState'];
      final userWithState = Map<String, dynamic>.from(
        userMap is Map<String, dynamic> ? userMap : <String, dynamic>{},
      )..['onboardingState'] = onboardingState;
      final user = UserModel.fromJson(userWithState);

      // Persist email for the verification screen
      final prefs2 = await SharedPreferences.getInstance();
      await prefs2.setString('pending_email', user.email);

      return ApiResponse<UserModel>(
        statusCode: body['statusCode'] ?? 200,
        message: body['message'] ?? 'Success',
        data: user,
        isSuccess: true,
      );
    }

    print('=== LOGIN FAILED DEBUG ===');
    print('Status Code: ${response.statusCode}');
    print('Error Body: ${response.bodyString}');
    print('==========================');

    return ApiResponse.fromResponse(response);
  }

  /// Register a new user.
  Future<ApiResponse<UserModel>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String pin,
    required String phone,
    String? platform,
    String? deviceId,
    String? deviceModel,
  }) async {
    final response = await _api.auth.registerAUser({
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'pin': pin,
      'phone': phone,
      if (platform != null) 'platform': platform,
      if (deviceId != null) 'deviceId': deviceId,
      if (deviceModel != null) 'deviceModel': deviceModel,
    });
    if (response.isSuccessful && response.body != null) {
      final body = response.body as Map<String, dynamic>;
      final data = body['data'] as Map<String, dynamic>?;
      // Save token
      final token =
          data?['access_token'] ??
          data?['token'] ??
          data?['accessToken'] ??
          body['access_token'] ??
          body['token'] ??
          body['accessToken'];

      if (token != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('auth_token', token);
      }

      final userMap = data?['user'] ?? body['user'] ?? data ?? {};
      final onboardingState =
          data?['onboardingState'] ?? body['onboardingState'];
      final userWithState = Map<String, dynamic>.from(
        userMap is Map<String, dynamic> ? userMap : <String, dynamic>{},
      )..['onboardingState'] = onboardingState;
      final user = UserModel.fromJson(userWithState);

      // Persist email for the verification screen
      final prefs2 = await SharedPreferences.getInstance();
      await prefs2.setString('pending_email', user.email);

      return ApiResponse<UserModel>(
        statusCode: body['statusCode'] ?? 200,
        message: body['message'] ?? 'Success',
        data: user,
        isSuccess: true,
      );
    }
    return ApiResponse.fromResponse(response);
  }

  /// Send verification email.
  Future<ApiResponse<Map<String, dynamic>>> sendVerificationEmail(
    String email,
  ) async {
    final response = await _api.auth.sendVerificationEmail(email, {});
    return ApiResponse.fromResponse(response);
  }

  /// Verify email token.
  Future<ApiResponse<Map<String, dynamic>>> verifyEmail(
    String token,
    String email,
  ) async {
    final response = await _api.auth.verifyUserEmail(token, email, {});
    return ApiResponse.fromResponse(response);
  }

  /// Request PIN reset.
  Future<ApiResponse<Map<String, dynamic>>> requestPinReset(
    String email,
  ) async {
    final response = await _api.auth.requestPinReset(email, {});
    return ApiResponse.fromResponse(response);
  }

  /// Reset PIN.
  Future<ApiResponse<Map<String, dynamic>>> resetPin({
    required String token,
    required String pin,
    required String confirmPin,
  }) async {
    final response = await _api.auth.resetUserPin({
      'token': token,
      'pin': pin,
      'confirmPin': confirmPin,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Change PIN.
  Future<ApiResponse<Map<String, dynamic>>> changePin({
    required String oldPin,
    required String newPin,
    required String confirmPin,
  }) async {
    final response = await _api.auth.changeUserPin({
      'oldPin': oldPin,
      'newPin': newPin,
      'confirmPin': confirmPin,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Set transaction PIN.
  Future<ApiResponse<Map<String, dynamic>>> setTransactionPin({
    required String newPin,
    required String confirmPin,
  }) async {
    final response = await _api.auth.setTransactionPin({
      'newPin': newPin,
      'confirmPin': confirmPin,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Change transaction PIN.
  Future<ApiResponse<Map<String, dynamic>>> changeTransactionPin({
    required String oldPin,
    required String newPin,
    required String confirmPin,
  }) async {
    final response = await _api.auth.changeTransactionPin({
      'oldPin': oldPin,
      'newPin': newPin,
      'confirmPin': confirmPin,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Update user email.
  Future<ApiResponse<Map<String, dynamic>>> updateEmail(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.auth.updateUserEmail(body);
    return ApiResponse.fromResponse(response);
  }

  /// Reset transaction PIN.
  Future<ApiResponse<Map<String, dynamic>>> resetTransactionPin({
    required String transactionPin,
    required String confirmPin,
  }) async {
    final response = await _api.auth.resetTransactionPin({
      'transactionPin': transactionPin,
      'confirmPin': confirmPin,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Logout — clear stored token.
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
  }

  /// Check if a valid token exists.
  Future<bool> hasValidToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('auth_token');
    return token != null && token.isNotEmpty;
  }

  // ── Onboarding ──

  /// Step 1: Request email signup.
  Future<ApiResponse<Map<String, dynamic>>> requestEmailSignup(
    String email,
  ) async {
    final response = await _api.onboarding.requestEmailSignup({'email': email});
    return ApiResponse.fromResponse(response);
  }

  /// Step 2: Verify email OTP.
  Future<ApiResponse<Map<String, dynamic>>> verifyEmailOtp({
    required String email,
    required String otp,
  }) async {
    final response = await _api.onboarding.verifyEmailOtp({
      'email': email,
      'otp': otp,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Step 3: Complete profile.
  Future<ApiResponse<Map<String, dynamic>>> completeProfile({
    required String firstName,
    required String lastName,
  }) async {
    final response = await _api.onboarding.completeUserProfile({
      'firstName': firstName,
      'lastName': lastName,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Step 4: Send phone OTP.
  Future<ApiResponse<Map<String, dynamic>>> sendPhoneOtp(String phone) async {
    final response = await _api.onboarding.sendPhoneOtp({'phone': phone});
    return ApiResponse.fromResponse(response);
  }

  /// Step 5: Verify phone OTP.
  Future<ApiResponse<Map<String, dynamic>>> verifyPhoneOtp({
    required String phone,
    required String otp,
  }) async {
    final response = await _api.onboarding.verifyPhoneOtp({
      'phone': phone,
      'otp': otp,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Get onboarding status.
  Future<ApiResponse<Map<String, dynamic>>> getOnboardingStatus() async {
    final response = await _api.onboarding.getOnboardingStatus();
    return ApiResponse.fromResponse(response);
  }

  // ── User Profile ──

  /// Get current user profile.
  Future<ApiResponse<UserModel>> getCurrentUser() async {
    final response = await _api.account.getCurrentUser();
    return ApiResponse.fromResponse(
      response,
      parser: (data) => UserModel.fromJson(data),
    );
  }

  /// Update user profile.
  Future<ApiResponse<Map<String, dynamic>>> updateProfile(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.account.updateUserProfile(body);
    return ApiResponse.fromResponse(response);
  }

  // ── KYC ──

  /// Get KYC status.
  Future<ApiResponse<Map<String, dynamic>>> getKycStatus() async {
    final response = await _api.kyc.getKycStatus();
    return ApiResponse.fromResponse(response);
  }

  /// Submit NIN for Tier 2.
  Future<ApiResponse<Map<String, dynamic>>> submitNin(String nin) async {
    final response = await _api.kyc.submitNinTier2({'nin': nin});
    return ApiResponse.fromResponse(response);
  }

  /// Submit BVN for Tier 3.
  Future<ApiResponse<Map<String, dynamic>>> submitBvn(String bvn) async {
    final response = await _api.kyc.submitBvnTier3({'bvn': bvn});
    return ApiResponse.fromResponse(response);
  }

  /// Get tier transaction limits.
  Future<ApiResponse<Map<String, dynamic>>> getKycLimits() async {
    final response = await _api.kyc.getTierTransactionLimits();
    return ApiResponse.fromResponse(response);
  }

  // ── Beneficiaries ──

  /// Get all beneficiaries.
  Future<ApiResponse<Map<String, dynamic>>> getBeneficiaries() async {
    final response = await _api.beneficiaries.getAllBeneficiaries();
    return ApiResponse.fromResponse(response);
  }

  /// Create a beneficiary.
  Future<ApiResponse<Map<String, dynamic>>> createBeneficiary(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.beneficiaries.createABeneficiary(body);
    return ApiResponse.fromResponse(response);
  }

  /// Delete a beneficiary.
  Future<ApiResponse<Map<String, dynamic>>> deleteBeneficiary(
    String type,
    String name,
  ) async {
    final response = await _api.beneficiaries.deleteABeneficiary(type, name);
    return ApiResponse.fromResponse(response);
  }

  // ── Payment Methods ──

  /// Get all payment methods.
  Future<ApiResponse<List<Map<String, dynamic>>>> getPaymentMethods() async {
    final response = await _api.paymentMethods.getAllPaymentMethods();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is List) return data.cast<Map<String, dynamic>>();
        return <Map<String, dynamic>>[];
      },
    );
  }

  /// Create a payment method.
  Future<ApiResponse<Map<String, dynamic>>> createPaymentMethod(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.paymentMethods.createAPaymentMethod(body);
    return ApiResponse.fromResponse(response);
  }

  /// Delete a payment method.
  Future<ApiResponse<Map<String, dynamic>>> deletePaymentMethod(
    String id,
  ) async {
    final response = await _api.paymentMethods.deleteAPaymentMethod(id);
    return ApiResponse.fromResponse(response);
  }

  /// Set default payment method.
  Future<ApiResponse<Map<String, dynamic>>> setDefaultPaymentMethod(
    String id,
  ) async {
    final response = await _api.paymentMethods.setDefaultPaymentMethod(id, {});
    return ApiResponse.fromResponse(response);
  }
}
