// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'monei_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$MoneiApi extends MoneiApi {
  _$MoneiApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = MoneiApi;

  @override
  Future<Response<dynamic>> _apiV1Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'AppController_getHello',
      consumes: [],
      produces: [],
      security: [],
      tags: [],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ResponseDto>> _apiV1AuthCheckExistsPhoneGet({
    required String? phone,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'check if user exists',
      operationId: 'AuthController_checkExists',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/check-exists/${phone}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ResponseDto, ResponseDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthAuthLoginPost({
    required LogInUserDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'login a user',
      operationId: 'AuthController_login',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/auth/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthAuthRegisterPost({
    required SignUpDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'register a user',
      operationId: 'AuthController_register',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/auth/register');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthSendVerificationEmailEmailPost({
    required String? email,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Send verification email to a user',
      operationId: 'AuthController_sendVerificationEmail',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/send-verification-email/${email}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthVerifyTokenEmailPost({
    required String? token,
    required String? email,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'verify user',
      operationId: 'AuthController_verifyEmail',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/verify/${token}/${email}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthRequestResetPinEmailPost({
    required String? email,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Send reset pin email to a user',
      operationId: 'AuthController_requestResetPin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/request-reset-pin/${email}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthResetPinPost({
    required ResetPinDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'reset user pin',
      operationId: 'AuthController_resetPin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/reset-pin');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthChangePinPut({
    required ChangePinDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'change user pin',
      operationId: 'AuthController_updateUserPin',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/change-pin');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthSetTransactionPinPut({
    required TransactionPinDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'set user transaction pin',
      operationId: 'AuthController_setUserTransactionPin',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/set-transaction-pin');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthChangeTransactionPinPut({
    required ChangeTransactionPinDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'change user transaction pin',
      operationId: 'AuthController_updateUserTransactionPin',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/change-transaction-pin');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ResponseDto>> _apiV1AuthUpdateEmailPut({
    required UpdateUserEmailDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'change/update user email',
      operationId: 'AuthController_updateUserEmail',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/update-email');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ResponseDto, ResponseDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthResetTransactionPinPut({
    required ResetTransactionPinDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Reset user transaction pin',
      operationId: 'AuthController_resetUserTransactionPin',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/auth/reset-transaction-pin');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1OnboardingGoogleGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Immediately redirects user to Google sign-in page',
      summary: 'Direct redirect to Google OAuth',
      operationId: 'OnboardingController_initiateGoogleAuth',
      consumes: [],
      produces: [],
      security: [],
      tags: ["onboarding"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/onboarding/google');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1OnboardingRequestSignupPost({
    required RequestEmailSignupDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Step 1: Start signup by providing email. Sends 6-digit OTP to email.',
      summary: 'Request email signup',
      operationId: 'OnboardingController_requestEmailSignup',
      consumes: [],
      produces: [],
      security: [],
      tags: ["onboarding"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/onboarding/request-signup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1OnboardingVerifyEmailOtpPost({
    required VerifyEmailOtpDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Step 2: Verify the 6-digit code sent to email',
      summary: 'Verify email OTP',
      operationId: 'OnboardingController_verifyEmailOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["onboarding"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/onboarding/verify-email-otp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1OnboardingCompleteProfilePut({
    required CompleteProfileDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Step 3: Add your name',
      summary: 'Complete profile',
      operationId: 'OnboardingController_completeProfile',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["onboarding"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/onboarding/complete-profile');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1OnboardingPhoneSendOtpPost({
    required SendPhoneOtpDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Step 4: Send 6-digit OTP to phone number',
      summary: 'Send phone OTP',
      operationId: 'OnboardingController_sendPhoneOtp',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["onboarding"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/onboarding/phone/send-otp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1OnboardingPhoneVerifyOtpPost({
    required VerifyPhoneOtpDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Step 5: Verify the 6-digit code sent to phone',
      summary: 'Verify phone OTP',
      operationId: 'OnboardingController_verifyPhoneOtp',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["onboarding"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/onboarding/phone/verify-otp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<OnboardingStatusResponseDto>>
  _apiV1OnboardingOnboardingStatusGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Check user\'s current onboarding progress and next step',
      summary: 'Get onboarding status',
      operationId: 'OnboardingController_getOnboardingStatus',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["onboarding"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/onboarding/onboarding-status');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<OnboardingStatusResponseDto, OnboardingStatusResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<dynamic>> _apiV1UserMeGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Retrieve a user',
      operationId: 'UserController_view',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Account Informations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/user/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1UserUpdatePatch({
    required UpdateUserDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Update a user',
      operationId: 'UserController_update',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Account Informations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/user/update');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<SupportedChainsResponseDto>> _apiV1EvmNetworksGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Returns mainnet chains in live mode, testnet chains in sandbox mode.',
      summary: 'Get all supported blockchain networks',
      operationId: 'EvmController_getSupportedNetworks',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm/networks');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SupportedChainsResponseDto, SupportedChainsResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<dynamic>> _apiV1EvmBalanceNativeGet({
    required num? chainId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get native token balance of user wallet',
      operationId: 'EvmController_getWalletBalance',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm/balance/native');
    final Map<String, dynamic> $params = <String, dynamic>{'chainId': chainId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmBalanceTokenGet({
    required String? tokenAddress,
    required num? chainId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get ERC20 token balance of user wallet',
      operationId: 'EvmController_getTokenBalance',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm/balance/token');
    final Map<String, dynamic> $params = <String, dynamic>{
      'tokenAddress': tokenAddress,
      'chainId': chainId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmPortfolioChainIdGet({
    required num? chainId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get ERC20 portfolio of a wallet',
      operationId: 'EvmController_getPortfolio',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm/portfolio/${chainId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmSendNativePost({
    required SendNativeTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Send native token to another address',
      operationId: 'EvmController_sendNativeToken',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm/send/native');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmSendTokenPost({
    required SendTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Send ERC20 token to another address',
      operationId: 'EvmController_sendToken',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm/send/token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaAddressGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get address of user wallet',
      operationId: 'SolanaController_getWalletAddress',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana/address');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaBalanceGet({
    String? network,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get SOL balance of user wallet',
      operationId: 'SolanaController_getNativeBalance',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana/balance');
    final Map<String, dynamic> $params = <String, dynamic>{'network': network};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaTokenBalanceTokenMintAddressGet({
    required String? tokenMintAddress,
    String? network,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get SPL token balance of user wallet',
      operationId: 'SolanaController_getTokenBalance',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/solana/token-balance/${tokenMintAddress}',
    );
    final Map<String, dynamic> $params = <String, dynamic>{'network': network};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaPortfolioGet({
    String? network,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get complete portfolio information',
      operationId: 'SolanaController_getPortfolio',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana/portfolio');
    final Map<String, dynamic> $params = <String, dynamic>{'network': network};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaTransferPost({
    required TransferSolDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Transfer SOL to another wallet',
      operationId: 'SolanaController_sendNativeToken',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana/transfer');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaTransferTokenPost({
    required TransferTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Transfer SPL token to another wallet',
      operationId: 'SolanaController_sendToken',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana/transfer-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PaginatedUserTransactionsResponseDto>>
  _apiV1TransactionsUserGet({
    num? page,
    num? limit,
    String? status,
    String? type,
    num? minAmount,
    num? maxAmount,
    String? currency,
    String? narration,
    String? reference,
    String? startDate,
    String? endDate,
    String? sortBy,
    String? sortOrder,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve paginated user transactions with various filtering options',
      summary: 'Get all user transactions with pagination and filters',
      operationId: 'TransactionController_getUserTransactions',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Transaction"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/transactions/user');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
      'status': status,
      'type': type,
      'minAmount': minAmount,
      'maxAmount': maxAmount,
      'currency': currency,
      'narration': narration,
      'reference': reference,
      'startDate': startDate,
      'endDate': endDate,
      'sortBy': sortBy,
      'sortOrder': sortOrder,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      PaginatedUserTransactionsResponseDto,
      PaginatedUserTransactionsResponseDto
    >($request);
  }

  @override
  Future<Response<dynamic>> _apiV1TransactionsIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get transaction with a unique id',
      operationId: 'TransactionController_findOne',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Transaction"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/transactions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1TransactionsReferenceReferenceGet({
    required String? reference,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get transaction with reference',
      operationId: 'TransactionController_findTransactionByref',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Transaction"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/transactions/reference/${reference}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
  _apiV1TransactionsFlutterwaveTransactionCallbackPost({
    required String? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'TransactionController_verifyWebhook',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Transaction"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/transactions/flutterwave-transaction-callback',
    );
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1TransactionsFlwTxCallbackPost({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'TransactionController_processFlwWebhook',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Transaction"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/transactions/flw-tx-callback');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletUserFundWalletPost({
    required FundWalletByNairaDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Fund wallet with naira',
      operationId: 'WalletController_fundWallet',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/user/fund-wallet');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletGetBanksGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get available banks for withdrawal',
      operationId: 'WalletController_getBanks',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/get-banks');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletGetBankCodeGet({
    required String? bankName,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get bank data with bank name',
      operationId: 'WalletController_getBankCode',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/get-bank-code');
    final Map<String, dynamic> $params = <String, dynamic>{
      'bankName': bankName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletVerifyBankAccountPost({
    required VerifyBankAccountRequestDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Verify bank account',
      operationId: 'WalletController_verifyBankAccount',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/verify-bank-account');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletWithdrawalsPost({
    required WithdrawWalletDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'make a withdrawal to a naira account',
      operationId: 'WalletController_withdrawFromWallet',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/withdrawals');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletPeerTransferPost({
    required PeerTransferDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Transfer funds to another user',
      operationId: 'WalletController_TransferFromWallet',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/peer-transfer');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletMeGet({
    num? chainId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get wallet and crypto portfolio',
      operationId: 'WalletAccountController_getWallet',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Account"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/me');
    final Map<String, dynamic> $params = <String, dynamic>{'chainId': chainId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletNairaWalletGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get user naira wallet',
      operationId: 'WalletAccountController_getNairaWallet',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Account"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/naira-wallet');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletVirtualAccountPost({
    required CreateVirtualAccountDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Create a permanent virtual account for the user',
      operationId: 'WalletAccountController_createVirtualAccount',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Account"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/virtual-account');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletDepositPost({
    required String? method,
    required DepositDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Initiate a deposit (Card, Transfer, USSD)',
      operationId: 'DepositController_deposit',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Deposits"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit');
    final Map<String, dynamic> $params = <String, dynamic>{'method': method};
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletDepositPaymentMethodPost({
    required DepositWithPaymentMethodDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Initiate a deposit with a payment method id',
      operationId: 'DepositController_depositWithPaymentmethod',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Deposits"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit/payment-method');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletDepositAuthorizePost({
    required DepositAuthDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Authorize a pending charge (OTP/PIN/3DS)',
      operationId: 'DepositController_authorizeDeposit',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Deposits"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit/authorize');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletDepositPaymentLinkPost({
    required GeneratePaymentLinkDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Generate a hosted payment link',
      operationId: 'DepositController_generateLink',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Deposits"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit/payment-link');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletDepositStatusReferenceGet({
    required String? reference,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Check payment status by reference',
      operationId: 'DepositController_getPaymentStatus',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Deposits"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/deposit/status/${reference}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletPayoutBankTransferPost({
    required InitiateBankTransferDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'send funds to a bank account',
      operationId: 'PayoutController_bankTransfer',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Payouts"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/payout/bank-transfer');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletPayoutTransferPost({
    required PeerTransferDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Internal transfer to another user (P2P)',
      operationId: 'PayoutController_peerTransfer',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Payouts"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/payout/transfer');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletUtilsBanksGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Fetch list of supported banks',
      operationId: 'BankUtilsController_getBanks',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Utilities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/utils/banks');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletUtilsVerifyBankAccountPost({
    required VerifyBankAccountRequestDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Resolve account number to account name',
      operationId: 'BankUtilsController_verifyAccount',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Utilities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/utils/verify-bank-account');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1WalletUtilsBankCodeGet({
    required String? bankName,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Lookup bank code by name',
      operationId: 'BankUtilsController_getBankCode',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Wallet | Utilities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/wallet/utils/bank-code');
    final Map<String, dynamic> $params = <String, dynamic>{
      'bankName': bankName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<ConversationListResponseDto>>>
  _apiV1AgentConversationsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieves all conversations for the authenticated user sorted by last updated date',
      summary: 'Get all conversations',
      operationId: 'AgentController_getConversations',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Agent Conversations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<List<ConversationListResponseDto>, ConversationListResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<AgentChatResponseDto>> _apiV1AgentConversationsPost({
    required AgentChatRequestDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Processes natural language queries about finances, transactions, and account management.',
      summary: 'Chat with Mr. Monei AI Agent',
      operationId: 'AgentController_chat',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Agent Conversations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AgentChatResponseDto, AgentChatResponseDto>($request);
  }

  @override
  Future<Response<List<ConversationMessagesResponseDto>>>
  _apiV1AgentConversationsConversationIdMessagesGet({
    required String? conversationId,
    num? limit,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieves messages for a specific conversation with pagination',
      summary: 'Get conversation messages',
      operationId: 'AgentController_getConversationMessages',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Agent Conversations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/agent/conversations/${conversationId}/messages',
    );
    final Map<String, dynamic> $params = <String, dynamic>{'limit': limit};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      List<ConversationMessagesResponseDto>,
      ConversationMessagesResponseDto
    >($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AgentConversationsInitConversationPost({
    required CreateConversationDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Initialize conversation before making chat request',
      summary: 'Initialize conversation',
      operationId: 'AgentController_initializeConversationWithId',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Agent Conversations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations/init-conversation');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AgentConversationsConversationIdDelete({
    required String? conversationId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Permanently deletes a conversation and all its messages',
      summary: 'Delete conversation',
      operationId: 'AgentController_deleteConversation',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Agent Conversations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations/${conversationId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AgentConversationsConversationIdPinPatch({
    required String? conversationId,
    required PinConversationDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Marks a conversation as pinned or unpinned for easy access',
      summary: 'Pin/unpin conversation',
      operationId: 'AgentController_pinConversation',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Agent Conversations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/agent/conversations/${conversationId}/pin',
    );
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<String>> _apiV1AgentConversationsStreamPost({
    String? accept,
    required AgentStreamRequestDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Real-time Server-Sent Events stream of agent responses',
      summary: 'Stream conversation with AI agent',
      operationId: 'AgentController_streamChat',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Agent Conversations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations/stream');
    final Map<String, String> $headers = {if (accept != null) 'Accept': accept};
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VoiceChatResponseDto>> _apiV1AgentConversationsVoicePost({
    required VoiceChatRequestDto body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''
      Send a voice message and receive both a text and audio response.
      Audio is transcribed via Whisper, processed by the agent, then synthesized back to speech via OpenAI TTS (Onyx voice).
      The transcribed text is saved to conversation history just like a regular text message.
      Supported formats: mp3, mp4, wav, webm, m4a (max 25MB).
    ''',
      summary: 'Voice chat with Mr. Monei AI Agent',
      operationId: 'AgentController_voiceChat',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Agent Conversations"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/agent/conversations/voice');
    final List<PartValue> $parts = <PartValue>[
      PartValue<VoiceChatRequestDto>('body', body),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      tag: swaggerMetaData,
    );
    return client.send<VoiceChatResponseDto, VoiceChatResponseDto>($request);
  }

  @override
  Future<Response<String>> _apiV1GuestAgentStreamPost({
    required GuestAgentRequestDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Guest chat stream via SSE',
      operationId: 'GuestAgentController_streamGuestChat',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Guest Agent"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/guest-agent/stream');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ApiClient>> _apiV1ApiGatewayClientsPost({
    required CreateApiClientDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Creates a new API client with generated keys. Requires admin privileges.',
      summary: 'Create a new API client',
      operationId: 'ApiGatewayController_createApiClient',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["API Gateway"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiClient, ApiClient>($request);
  }

  @override
  Future<Response<List<ApiClient>>> _apiV1ApiGatewayClientsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieves a list of all API clients for the authenticated user.',
      summary: 'List all API clients',
      operationId: 'ApiGatewayController_getApiClients',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["API Gateway"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<ApiClient>, ApiClient>($request);
  }

  @override
  Future<Response<ApiClient>> _apiV1ApiGatewayClientsIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieves details of a specific API client by ID.',
      summary: 'Get API client details',
      operationId: 'ApiGatewayController_getApiClient',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["API Gateway"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ApiClient, ApiClient>($request);
  }

  @override
  Future<Response<ApiClient>> _apiV1ApiGatewayClientsIdPut({
    required String? id,
    required UpdateApiClientDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Updates the configuration of an existing API client.',
      summary: 'Update API client',
      operationId: 'ApiGatewayController_updateApiClient',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["API Gateway"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiClient, ApiClient>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ApiGatewayClientsIdDelete({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Permanently deletes an API client and invalidates its keys.',
      summary: 'Delete API client',
      operationId: 'ApiGatewayController_deleteApiClient',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["API Gateway"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/api-gateway/clients/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<RegenerateKeysResponseDto>>
  _apiV1ApiGatewayClientsIdRegenerateKeysPost({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Generates new API key and secret for an existing client. Previous keys will be invalidated.',
      summary: 'Regenerate API keys',
      operationId: 'ApiGatewayController_regenerateApiKeys',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["API Gateway"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/api-gateway/clients/${id}/regenerate-keys',
    );
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<RegenerateKeysResponseDto, RegenerateKeysResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<KycStatusResponseDto>> _apiV1KycStatusGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''
      Returns your current KYC tier, verification status, and transaction limits.
      
      **Tier Progression:**
      - Tier 1: Basic (Phone, Email, Name) - Auto-verified on signup
      - Tier 2: NIN Verified - Submit NIN to upgrade
      - Tier 3: Enhanced (BVN + ID + Selfie) - Submit BVN and documents
      - Tier 4: Premium (Full KYC) - Biometric + Address verification
    ''',
      summary: 'Get current KYC status and tier limits',
      operationId: 'KycController_getKycStatus',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["KYC Verification"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/kyc/status');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<KycStatusResponseDto, KycStatusResponseDto>($request);
  }

  @override
  Future<Response<NinVerificationResponseDto>> _apiV1KycSubmitNinPost({
    required SubmitNinDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''
      Submit your National Identity Number (NIN) to upgrade to Tier 2.
      
      **What happens:**
      1. System verifies your NIN with Flutterwave
      2. Creates a virtual account for easy deposits
      3. Upgrades you to Tier 2
      
      **New Limits (Tier 2):**
      - Single transaction: ₦200,000
      - Daily: ₦500,000
      - Monthly: ₦2,000,000
      
      **Note:** This also creates your virtual account for bank transfers.
    ''',
      summary: 'Submit NIN for Tier 2 verification',
      operationId: 'KycController_submitNin',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["KYC Verification"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/kyc/submit-nin');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<NinVerificationResponseDto, NinVerificationResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<BvnVerificationResponseDto>> _apiV1KycSubmitBvnPost({
    required SubmitBvnDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''
      Submit your Bank Verification Number (BVN) to start Tier 3 verification.
      
      **Requirements:**
      - Must have completed Tier 2 (NIN verification)
      
      **Next Steps:**
      After BVN submission, you need to:
      1. Upload government-issued ID
      2. Submit selfie verification
      
      **Tier 3 Unlocks:**
      - ₦1,000,000 single transaction
      - ₦5,000,000 daily limit
      - Cryptocurrency trading
      - Cross-border transfers
    ''',
      summary: 'Submit BVN for Tier 3 verification',
      operationId: 'KycController_submitBvn',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["KYC Verification"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/kyc/submit-bvn');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<BvnVerificationResponseDto, BvnVerificationResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<DocumentUploadResponseDto>> _apiV1KycUploadDocumentPost({
    required UploadDocumentDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Upload a KYC document (Government ID, Selfie, Utility Bill, etc.)',
      summary: 'Upload KYC document',
      operationId: 'KycController_uploadDocument',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["KYC Verification"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/kyc/upload-document');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DocumentUploadResponseDto, DocumentUploadResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<EligibilityCheckResponseDto>> _apiV1KycCheckEligibilityPost({
    required CheckTierEligibilityDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Check if you meet all requirements for upgrading to a specific tier',
      summary: 'Check eligibility for tier upgrade',
      operationId: 'KycController_checkEligibility',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["KYC Verification"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/kyc/check-eligibility');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<EligibilityCheckResponseDto, EligibilityCheckResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<dynamic>> _apiV1KycLimitsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Returns the transaction limits for your current KYC tier',
      summary: 'Get current tier transaction limits',
      operationId: 'KycController_getTierLimits',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["KYC Verification"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/kyc/limits');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentMethodsSyncPost({
    required SyncPaymentMethodsDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Sync existing virtual accounts as payment methods',
      operationId: 'PaymentMethodController_syncPaymentMethods',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Payment Methods"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/payment-methods/sync');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentMethodsGet({
    required String? subWalletId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get all payment methods for user',
      operationId: 'PaymentMethodController_getPaymentMethods',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Payment Methods"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/payment-methods');
    final Map<String, dynamic> $params = <String, dynamic>{
      'subWalletId': subWalletId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentMethodsPost({
    required CreatePaymentMethodDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Create a new payment method',
      operationId: 'PaymentMethodController_createPaymentMethod',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Payment Methods"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/payment-methods');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentMethodsIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get payment method details',
      operationId: 'PaymentMethodController_getPaymentMethod',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Payment Methods"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/payment-methods/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentMethodsIdDelete({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Delete a payment method',
      operationId: 'PaymentMethodController_deletePaymentMethod',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Payment Methods"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/payment-methods/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentMethodsIdDefaultPatch({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Set payment method as default',
      operationId: 'PaymentMethodController_setDefaultPaymentMethod',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Payment Methods"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/payment-methods/${id}/default');
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1CustomersBusinessIdPost({
    required String? businessId,
    required CreateCustomerDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'CustomersController_createCustomer',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Customer For Businesses"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/customers/${businessId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1CustomersBusinessIdGet({
    required String? businessId,
    num? page,
    num? limit,
    String? sortBy,
    String? sortOrder,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'CustomersController_listCustomers',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Customer For Businesses"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/customers/${businessId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
      'sortBy': sortBy,
      'sortOrder': sortOrder,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1CustomersBusinessIdCustomerIdGet({
    required String? businessId,
    required String? customerId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'CustomersController_getCustomer',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Customer For Businesses"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/customers/${businessId}/${customerId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1CustomersBusinessIdCustomerIdPatch({
    required String? businessId,
    required String? customerId,
    required UpdateCustomerDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'CustomersController_updateCustomer',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Customer For Businesses"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/customers/${businessId}/${customerId}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1CustomersBusinessIdCustomerIdDisablePatch({
    required String? businessId,
    required String? customerId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'CustomersController_disableCustomer',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Customer For Businesses"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/customers/${businessId}/${customerId}/disable',
    );
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsGetBillerItemsCategoryBillerNameGet({
    required String? category,
    required String? billerName,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillController_getBillers',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/bills/get-biller-items/${category}/${billerName}',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsBillersElectricityGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Get list of electricity distribution companies with their Flutterwave biller codes. Use "name" field when making electricity payments.',
      summary: 'Get all electricity billers with codes',
      operationId: 'BillController_getElectricityBillers',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/billers/electricity');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsValidatePost({
    required ValidateBillDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillController_validate',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/validate');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsBuyAirtimePost({
    required AirtimePurchaseDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillController_buyAirtime',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/buy-airtime');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsBuyMobileDataPost({
    required DataPurchaseDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillController_buyMobileData',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/buy-mobile-data');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsBuyElectricityPost({
    required ElectricityPaymentDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillController_buyElectricity',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/buy-electricity');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsSubscribeCableTvPost({
    required CableTvPaymentDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillController_subscribeCableTv',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/subscribe-cable-tv');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<BillHistoryResponseDto>> _apiV1BillsGet({
    String? type,
    String? status,
    String? billerName,
    String? billerCode,
    String? customer,
    String? startDate,
    String? endDate,
    String? search,
    num? minAmount,
    num? maxAmount,
    num? page,
    num? limit,
    String? sortBy,
    String? sortOrder,
    num? page$,
    num? limit$,
    String? sortBy$,
    String? sortOrder$,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve paginated bill transaction history with various filtering options',
      summary: 'Get transaction history with filtering and pagination',
      operationId: 'BillController_getHistory',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills');
    final Map<String, dynamic> $params = <String, dynamic>{
      'type': type,
      'status': status,
      'billerName': billerName,
      'billerCode': billerCode,
      'customer': customer,
      'startDate': startDate,
      'endDate': endDate,
      'search': search,
      'minAmount': minAmount,
      'maxAmount': maxAmount,
      'page': page$,
      'limit': limit$,
      'sortBy': sortBy$,
      'sortOrder': sortOrder$,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<BillHistoryResponseDto, BillHistoryResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<BillResponseDto>> _apiV1BillsReferenceReferenceGet({
    required String? reference,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve a specific bill transaction using its unique reference. User can only access their own transactions.',
      summary: 'Get bill transaction by reference',
      operationId: 'BillController_getBillByReference',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/reference/${reference}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<BillResponseDto, BillResponseDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsReceiptTransactionIdGet({
    required String? transactionId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Generate receipt for a transaction',
      operationId: 'BillController_generateReceipt',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/receipt/${transactionId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsPaymentCallbackPost({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillController_verifyWebhook',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Payment"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/payment-callback');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillBeneficiariesGet({
    String? type,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillBeneficiaryController_getBeneficiaries',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Bill Payment Beneficiary"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries');
    final Map<String, dynamic> $params = <String, dynamic>{'type': type};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillBeneficiariesFavoritesGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillBeneficiaryController_getFavorites',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Bill Payment Beneficiary"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/favorites');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillBeneficiariesMobilePost({
    required CreateMobileBeneficiaryDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillBeneficiaryController_createMobileBeneficiary',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Bill Payment Beneficiary"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/mobile');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillBeneficiariesElectricityPost({
    required CreateElectricityBeneficiaryDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillBeneficiaryController_createElectricityBeneficiary',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Bill Payment Beneficiary"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/electricity');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillBeneficiariesCableTvPost({
    required CreateCableTvBeneficiaryDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillBeneficiaryController_createCableTvBeneficiary',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Bill Payment Beneficiary"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/cable-tv');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillBeneficiariesIdPut({
    required String? id,
    required UpdateBillBeneficiaryDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillBeneficiaryController_updateBeneficiary',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Bill Payment Beneficiary"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillBeneficiariesIdDelete({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'BillBeneficiaryController_deleteBeneficiary',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Bill Payment Beneficiary"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bill-beneficiaries/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsDiscoveryElectricityOperatorsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'List all electricity distribution companies (DISCOs)',
      operationId: 'BillDiscoveryController_getElectricityBillers',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Discovery"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/discovery/electricity-operators');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
  _apiV1BillsDiscoveryBillerItemsCategoryBillerNameGet({
    required String? category,
    required String? billerName,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get specific items (e.g., data plans) for a provider',
      operationId: 'BillDiscoveryController_getBillerItems',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Discovery"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/bills/discovery/biller-items/${category}/${billerName}',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ResponseDto>> _apiV1BillsValidationCustomerPost({
    required ValidateBillDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Verify Meter Numbers, SmartCard IDs, or Phone Numbers before payment.',
      summary: 'Validate Customer Details',
      operationId: 'BillValidationController_validate',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bills Validation"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/validation/customer');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ResponseDto, ResponseDto>($request);
  }

  @override
  Future<Response<BillPaymentResponseDto>> _apiV1BillsPayAirtimePost({
    required AirtimePurchaseDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Buy Airtime',
      operationId: 'BillPaymentController_buyAirtime',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Pay"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/pay/airtime');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<BillPaymentResponseDto, BillPaymentResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<BillPaymentResponseDto>> _apiV1BillsPayDataPost({
    required DataPurchaseDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Buy Mobile Data',
      operationId: 'BillPaymentController_buyMobileData',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Pay"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/pay/data');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<BillPaymentResponseDto, BillPaymentResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<BillPaymentResponseDto>> _apiV1BillsPayElectricityPost({
    required ElectricityPaymentDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Pay Electricity',
      operationId: 'BillPaymentController_buyElectricity',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Pay"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/pay/electricity');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<BillPaymentResponseDto, BillPaymentResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<BillPaymentResponseDto>> _apiV1BillsPayCableTvPost({
    required CableTvPaymentDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Subscribe Cable TV',
      operationId: 'BillPaymentController_subscribeCableTv',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Pay"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/pay/cable-tv');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<BillPaymentResponseDto, BillPaymentResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<BillHistoryResponseDto>> _apiV1BillsRecordsGet({
    String? type,
    String? status,
    String? billerName,
    String? billerCode,
    String? customer,
    String? startDate,
    String? endDate,
    String? search,
    num? minAmount,
    num? maxAmount,
    num? page,
    num? limit,
    String? sortBy,
    String? sortOrder,
    num? page$,
    num? limit$,
    String? sortBy$,
    String? sortOrder$,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Fetch all bill payments with pagination and status filters.',
      summary: 'Transaction History',
      operationId: 'BillHistoryController_getHistory',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Records"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/records');
    final Map<String, dynamic> $params = <String, dynamic>{
      'type': type,
      'status': status,
      'billerName': billerName,
      'billerCode': billerCode,
      'customer': customer,
      'startDate': startDate,
      'endDate': endDate,
      'search': search,
      'minAmount': minAmount,
      'maxAmount': maxAmount,
      'page': page$,
      'limit': limit$,
      'sortBy': sortBy$,
      'sortOrder': sortOrder$,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<BillHistoryResponseDto, BillHistoryResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<BillResponseDto>> _apiV1BillsRecordsReferenceReferenceGet({
    required String? reference,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve a specific bill transaction using its unique reference. User can only access their own transactions.',
      summary: 'Get bill transaction by reference',
      operationId: 'BillHistoryController_getBillByReference',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Records"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/bills/records/reference/${reference}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<BillResponseDto, BillResponseDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillsRecordsReceiptTransactionIdGet({
    required String? transactionId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Generate Receipt',
      operationId: 'BillHistoryController_generateReceipt',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Bill | Records"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/bills/records/receipt/${transactionId}',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ScheduleResponseDto>> _apiV1SchedulesPost({
    required CreateScheduleDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Create a new scheduled payment',
      operationId: 'ScheduleController_create',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Schedules"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/schedules');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ScheduleResponseDto, ScheduleResponseDto>($request);
  }

  @override
  Future<Response<List<ScheduleResponseDto>>> _apiV1SchedulesGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get all scheduled payments for user',
      operationId: 'ScheduleController_findAll',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Schedules"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/schedules');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<ScheduleResponseDto>, ScheduleResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<ScheduleResponseDto>> _apiV1SchedulesIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get a specific scheduled payment',
      operationId: 'ScheduleController_findOne',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Schedules"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/schedules/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ScheduleResponseDto, ScheduleResponseDto>($request);
  }

  @override
  Future<Response<ScheduleResponseDto>> _apiV1SchedulesIdPut({
    required String? id,
    required UpdateScheduleDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Update a scheduled payment',
      operationId: 'ScheduleController_update',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Schedules"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/schedules/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ScheduleResponseDto, ScheduleResponseDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SchedulesIdDelete({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Cancel a scheduled payment',
      operationId: 'ScheduleController_remove',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Schedules"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/schedules/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<SyncStocksResponseDto>> _apiV1SecuritiesStocksSyncPost({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Sync available stocks from STOX',
      operationId: 'SecuritiesController_syncStocks',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Securities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/securities/stocks/sync');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SyncStocksResponseDto, SyncStocksResponseDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SecuritiesStocksGet({
    num? page,
    num? limit,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get available stocks with real-time prices',
      operationId: 'SecuritiesController_getAvailableStocks',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Securities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/securities/stocks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<StockResponseDto>> _apiV1SecuritiesStocksTickerGet({
    required String? ticker,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get details of a specific stock',
      operationId: 'SecuritiesController_getStockDetails',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Securities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/securities/stocks/${ticker}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<StockResponseDto, StockResponseDto>($request);
  }

  @override
  Future<Response<BuyStockResponseDto>> _apiV1SecuritiesStocksOrdersPost({
    required BuyStockDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Buy tokenized stock',
      operationId: 'SecuritiesController_buyStock',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Securities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/securities/stocks/orders');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<BuyStockResponseDto, BuyStockResponseDto>($request);
  }

  @override
  Future<Response<UserStockHoldingsResponseDto>>
  _apiV1SecuritiesUsersMeHoldingsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get all stocks owned by user',
      operationId: 'SecuritiesController_getUserStockHoldings',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Securities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/securities/users/me/holdings');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<UserStockHoldingsResponseDto, UserStockHoldingsResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<dynamic>> _apiV1SecuritiesUsersMeHoldingsTickerGet({
    required String? ticker,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get specific stock holding details',
      operationId: 'SecuritiesController_getStockHolding',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Securities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/securities/users/me/holdings/${ticker}',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SecuritiesIntegrationsStoxOrdersGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get user orders from STOX',
      operationId: 'SecuritiesController_getUserStoxOrders',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Securities"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/securities/integrations/stox/orders');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ChatSettings>> _apiV1ChatSettingsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get user chat settings',
      operationId: 'ChatSettingsController_getSettings',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Chat Settings"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/chat-settings');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ChatSettings, ChatSettings>($request);
  }

  @override
  Future<Response<ChatSettings>> _apiV1ChatSettingsPut({
    required ChatSettingsDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Update chat settings',
      operationId: 'ChatSettingsController_updateSettings',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Chat Settings"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/chat-settings');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ChatSettings, ChatSettings>($request);
  }

  @override
  Future<Response<ChatSettings>> _apiV1ChatSettingsResetPost({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Reset chat settings to defaults',
      operationId: 'ChatSettingsController_resetSettings',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Chat Settings"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/chat-settings/reset');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ChatSettings, ChatSettings>($request);
  }

  @override
  Future<Response<Object>> _apiV1ChatSettingsSupportedNetworksGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get supported networks configuration',
      operationId: 'ChatSettingsController_getSupportedNetworks',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Chat Settings"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/chat-settings/supported-networks');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmExchangePriceNativeToTokenPost({
    required SwapNativeToTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get quote to swap native token to an ERC20 token',
      operationId: 'EvmExchangeController_swapNativeToTokenQuote',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/price/native-to-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmExchangeNativeToTokenPost({
    required SwapNativeToTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Swap native token to an ERC20 token',
      operationId: 'EvmExchangeController_swapNativeToToken',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/native-to-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmExchangePriceTokenToTokenPost({
    required EvmSwapTokenToTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get price to swap one ERC20 token to another',
      operationId: 'EvmExchangeController_swapTokenToTokenQuote',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/price/token-to-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmExchangeTokenToTokenPost({
    required EvmSwapTokenToTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Swap one ERC20 token to another',
      operationId: 'EvmExchangeController_swapTokenToToken',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/token-to-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmExchangePriceTokenToNativePost({
    required SwapTokenToNativeDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get quote to swap an ERC20 token to native token',
      operationId: 'EvmExchangeController_swapTokenToNativeQuote',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/price/token-to-native');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1EvmExchangeTokenToNativePost({
    required SwapTokenToNativeDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Swap an ERC20 token to native token',
      operationId: 'EvmExchangeController_swapTokenToNative',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["EVM Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/evm-exchange/token-to-native');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaExchangeQuoteSolToTokenGet({
    required String? outputMint,
    required num? amount,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'SolanaExchangeController_getSolToTokenQuote',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/quote/sol-to-token');
    final Map<String, dynamic> $params = <String, dynamic>{
      'outputMint': outputMint,
      'amount': amount,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaExchangeQuoteTokenToSolGet({
    required String? inputMint,
    required num? amount,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'SolanaExchangeController_getTokenToSolQuote',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/quote/token-to-sol');
    final Map<String, dynamic> $params = <String, dynamic>{
      'inputMint': inputMint,
      'amount': amount,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaExchangeQuoteTokenToTokenGet({
    required String? inputMint,
    required String? outputMint,
    required num? amount,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'SolanaExchangeController_getQuote',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/quote/token-to-token');
    final Map<String, dynamic> $params = <String, dynamic>{
      'inputMint': inputMint,
      'outputMint': outputMint,
      'amount': amount,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaExchangeSwapSolToTokenPost({
    required SwapSolToTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Swap SOL to SPL token',
      operationId: 'SolanaExchangeController_swapSolToToken',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/swap-sol-to-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaExchangeSwapTokenToTokenPost({
    required SwapTokenToTokenDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Swap SPL token to SPL token',
      operationId: 'SolanaExchangeController_swapTokenToToken',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/swap-token-to-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SolanaExchangeSwapTokenToSolPost({
    required SwapTokenToSolDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Swap SPL token to SOL',
      operationId: 'SolanaExchangeController_swapTokenToSol',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Solana Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/solana-exchange/swap-token-to-sol');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PayoutBanksResponseDto>> _apiV1OfframpPayoutsBanksGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve a list of supported banks for fiat payout in Nigeria (NGN).',
      summary: 'Get supported payout banks',
      operationId: 'OfframpPayoutController_getPayoutBanks',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Offramp | Payouts"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/payouts/banks');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<PayoutBanksResponseDto, PayoutBanksResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<VerifyOfframpBankAccountResponseDto>>
  _apiV1OfframpPayoutsVerifyPost({
    required VerifyOfframpBankAccountRequestDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Validates the account number and returns the registered account name.',
      summary: 'Verify bank account',
      operationId: 'OfframpPayoutController_verifyBankAccount',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Offramp | Payouts"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/payouts/verify');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      VerifyOfframpBankAccountResponseDto,
      VerifyOfframpBankAccountResponseDto
    >($request);
  }

  @override
  Future<Response<dynamic>> _apiV1OfframpExchangeAssetsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve all supported Crypto-Network pairs.',
      summary: 'List supported assets',
      operationId: 'OfframpExchangeController_getAssets',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Offramp | Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/exchange/assets');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<OfframpExchangeRateDto>> _apiV1OfframpExchangeQuoteGet({
    required String? token,
    required String? network,
    required num? amount,
    String? fiat,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Real-time exchange rate calculation for a specific token and network.',
      summary: 'Get Crypto-to-Fiat Quote',
      operationId: 'OfframpExchangeController_getQuote',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Offramp | Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/exchange/quote');
    final Map<String, dynamic> $params = <String, dynamic>{
      'token': token,
      'network': network,
      'amount': amount,
      'fiat': fiat,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<OfframpExchangeRateDto, OfframpExchangeRateDto>(
      $request,
    );
  }

  @override
  Future<Response<OfframpOrderResponseDto>> _apiV1OfframpExchangeInitiatePost({
    required SwapCryptoToFiatRequestDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''
            Swap cryptocurrency to Naira and receive in your bank account.

            **Two Possible Flows:**

            1. **Sufficient Balance in Monei Wallet (201 CREATED):**
               - Crypto is automatically sent from your Monei Wallet
               - Transaction is immediately processed on-chain
               - Returns transaction details with txHash
               - Status: PENDING

            2. **Insufficient Balance - External Wallet Required (202 ACCEPTED):**
               - Returns deposit instructions with blockchain address
               - You send crypto from any external wallet
               - We detect and process the deposit automatically
               - Status: AWAITING_DEPOSIT
               - Deposit window: 30 minutes

            **Sandbox mode:** exchage provider is not called and no blockchain transfer is
            executed. A real DB record is created (environment = sandbox) so you
            can test history lookups and webhook flows end-to-end.
        ''',
      summary: 'Initiate Crypto-to-Fiat order',
      operationId: 'OfframpExchangeController_initiateSwap',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Offramp | Exchange"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/exchange/initiate');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<OfframpOrderResponseDto, OfframpOrderResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<OfframpTransactionListResponseDto>>
  _apiV1OfframpLedgerHistoryGet({
    num? limit,
    num? page,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get transaction history',
      operationId: 'OfframpLedgerController_getHistory',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Offramp | Ledger"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/ledger/history');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OfframpTransactionListResponseDto,
      OfframpTransactionListResponseDto
    >($request);
  }

  @override
  Future<Response<OfframpTransactionDetailResponseDto>>
  _apiV1OfframpLedgerStatusReferenceGet({
    required String? reference,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Track transaction by reference',
      operationId: 'OfframpLedgerController_getByReference',
      consumes: [],
      produces: [],
      security: ["bearer", "api-key"],
      tags: ["Offramp | Ledger"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/ledger/status/${reference}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      OfframpTransactionDetailResponseDto,
      OfframpTransactionDetailResponseDto
    >($request);
  }

  @override
  Future<Response<dynamic>> _apiV1OfframpLedgerWebhookProviderPost({
    required String? provider,
    String? xSignature,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Provider Webhook Receiver',
      operationId: 'OfframpLedgerController_handleWebhook',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Offramp | Ledger"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/offramp/ledger/webhook/${provider}');
    final Map<String, String> $headers = {
      if (xSignature != null) 'X-Signature': xSignature,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BeneficiariesPost({
    required CreateBeneficiaryDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Create a new beneficiary',
      operationId: 'BeneficiaryController_create',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BeneficiariesGet({
    String? type,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get all beneficiaries for the user',
      operationId: 'BeneficiaryController_findAll',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries');
    final Map<String, dynamic> $params = <String, dynamic>{'type': type};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BeneficiariesIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get a specific beneficiary',
      operationId: 'BeneficiaryController_findOne',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BeneficiariesIdPut({
    required String? id,
    required UpdateBeneficiaryDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Update a beneficiary',
      operationId: 'BeneficiaryController_update',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BeneficiariesTypeNameDelete({
    required String? type,
    required String? name,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Delete a beneficiary',
      operationId: 'BeneficiaryController_remove',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries/${type}/${name}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BeneficiariesTransferPost({
    required TransferToBeneficiaryDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Transfer to a beneficiary',
      operationId: 'BeneficiaryController_transfer',
      consumes: [],
      produces: [],
      security: ["api-key", "bearer"],
      tags: ["Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/beneficiaries/transfer');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminCreateAdminPost({
    required CreateAdminDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Create a new admin user',
      operationId: 'AdminController_createAdmin',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/create-admin');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminAssignRolePost({
    required AssignRoleDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Assign role(s) to a user',
      operationId: 'AdminController_assignRole',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/assign-role');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminAssignPermissionPost({
    required AssignPermissionDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Assign permission(s) to a user',
      operationId: 'AdminController_assignPermission',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/assign-permission');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminRolesGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get all roles',
      operationId: 'RoleAdminController_getRoles',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/roles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminRolesPost({
    required CreateRoleDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Create a new role',
      operationId: 'RoleAdminController_createRole',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/roles');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminRolesIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get role by ID',
      operationId: 'RoleAdminController_getRole',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/roles/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminRolesIdDelete({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Delete a role',
      operationId: 'RoleAdminController_deleteRole',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/roles/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminRolesIdPermissionsPatch({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Update permissions for a role',
      operationId: 'RoleAdminController_updateRolePermissions',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/roles/${id}/permissions');
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Role>> _apiV1AdminRolesRoleIdPermissionsPermissionIdPost({
    required String? roleId,
    required String? permissionId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Assigns an existing permission to an existing role by their IDs.',
      summary: 'Add a permission to a role',
      operationId: 'RoleAdminController_addPermissionToRole',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/admin/roles/${roleId}/permissions/${permissionId}',
    );
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<Role, Role>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminPermissionsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get all permissions',
      operationId: 'PermissionAdminController_getPermissions',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Permissions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/permissions');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminPermissionsPost({
    required CreatePermissionDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Create a new permission',
      operationId: 'PermissionAdminController_createPermission',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Permissions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/permissions');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminPermissionsDefaultGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get default permissions',
      operationId: 'PermissionAdminController_getDefaultPermissions',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Permissions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/permissions/default');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminPermissionsIdDelete({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Delete a permission',
      operationId: 'PermissionAdminController_deletePermission',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Permissions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/permissions/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminUsersGet({
    required num? page,
    required num? limit,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'UserAdminController_findAllUsers',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Users"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/users');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminUsersIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'UserAdminController_findUserById',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Users"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/users/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminUsersSearchQueryGet({
    required String? q,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'UserAdminController_searchUsers',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Users"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/users/search/query');
    final Map<String, dynamic> $params = <String, dynamic>{'q': q};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminUsersIdSummaryGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'UserAdminController_getUserSummary',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Users"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/users/${id}/summary');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminWalletsUserIdGet({
    required String? userId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'WalletAdminController_getWallet',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/wallets/${userId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminWalletsUserIdFreezePatch({
    required String? userId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'WalletAdminController_freeze',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/wallets/${userId}/freeze');
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminWalletsUserIdUnfreezePatch({
    required String? userId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'WalletAdminController_unfreeze',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Wallet"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/wallets/${userId}/unfreeze');
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsGet({
    num? page,
    num? limit,
    bool? webhookSent,
    DateTime? endDate,
    DateTime? startDate,
    num? maxAmount,
    num? minAmount,
    String? currency,
    String? walletId,
    String? userId,
    String? type,
    String? status,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'List transactions with advanced filters and pagination',
      operationId: 'TransactionAdminController_findAll',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
      'webhookSent': webhookSent,
      'endDate': endDate,
      'startDate': startDate,
      'maxAmount': maxAmount,
      'minAmount': minAmount,
      'currency': currency,
      'walletId': walletId,
      'userId': userId,
      'type': type,
      'status': status,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<TransactionStatsDto>> _apiV1AdminTransactionsStatsGet({
    String? currency,
    DateTime? endDate,
    DateTime? startDate,
    String? type,
    String? status,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get transaction statistics and analytics',
      operationId: 'TransactionAdminController_getStats',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions/stats');
    final Map<String, dynamic> $params = <String, dynamic>{
      'currency': currency,
      'endDate': endDate,
      'startDate': startDate,
      'type': type,
      'status': status,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<TransactionStatsDto, TransactionStatsDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsUserUserIdGet({
    required String? userId,
    num? page,
    num? limit,
    String? type,
    String? status,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get transactions for a specific user',
      operationId: 'TransactionAdminController_findByUser',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions/user/${userId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
      'type': type,
      'status': status,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsSearchGet({
    required String? q,
    num? page,
    num? limit,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Search transactions by various fields',
      operationId: 'TransactionAdminController_search',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions/search');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'page': page,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsFailedWebhooksGet({
    num? page,
    num? limit,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get transactions with failed webhooks',
      operationId: 'TransactionAdminController_getFailedWebhooks',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions/failed-webhooks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsExportGet({
    String? currency,
    DateTime? endDate,
    DateTime? startDate,
    String? type,
    String? status,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Export transactions data',
      operationId: 'TransactionAdminController_exportTransactions',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions/export');
    final Map<String, dynamic> $params = <String, dynamic>{
      'currency': currency,
      'endDate': endDate,
      'startDate': startDate,
      'type': type,
      'status': status,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get a transaction by ID',
      operationId: 'TransactionAdminController_findById',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsIdStatusPut({
    required String? id,
    required UpdateStatusDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Update transaction status',
      operationId: 'TransactionAdminController_updateStatus',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions/${id}/status');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsBulkStatusPost({
    required BulkUpdateStatusDto? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Bulk update transaction statuses',
      operationId: 'TransactionAdminController_bulkUpdateStatus',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/transactions/bulk-status');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminTransactionsIdRetryWebhookPost({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Retry webhook for a transaction',
      operationId: 'TransactionAdminController_retryWebhook',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/v1/admin/transactions/${id}/retry-webhook',
    );
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminBillTransactionsGet({
    num? page,
    num? limit,
    String? status,
    String? type,
    String? billerCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'List bill transactions with filters and pagination',
      operationId: 'BillTransactionAdminController_findAll',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Bill Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/bill-transactions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
      'status': status,
      'type': type,
      'billerCode': billerCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminBillTransactionsIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get a bill transaction by ID',
      operationId: 'BillTransactionAdminController_findById',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Bill Transactions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/bill-transactions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminBillBeneficiariesGet({
    num? page,
    num? limit,
    String? type,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'List bill beneficiaries with optional type filter',
      operationId: 'BillBeneficiaryAdminController_findAll',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Bill Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/bill-beneficiaries');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
      'type': type,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminBillBeneficiariesIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get a bill beneficiary by ID',
      operationId: 'BillBeneficiaryAdminController_findById',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Bill Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/bill-beneficiaries/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminBeneficiariesGet({
    num? page,
    num? limit,
    String? type,
    String? search,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'List beneficiaries with optional type & search filter',
      operationId: 'BeneficiaryAdminController_findAll',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/beneficiaries');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
      'type': type,
      'search': search,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminBeneficiariesIdGet({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Get a beneficiary by ID',
      operationId: 'BeneficiaryAdminController_findById',
      consumes: [],
      produces: [],
      security: ["bearer"],
      tags: ["Admin - Beneficiaries"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/beneficiaries/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
