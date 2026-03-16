import 'package:chopper/chopper.dart';

part 'wallet_api.chopper.dart';

@ChopperApi()
abstract class WalletApiService extends ChopperService {
  static WalletApiService create([ChopperClient? client]) =>
      _$WalletApiService(client);

  /// Get wallet + crypto portfolio
  @GET(path: '/api/v1/wallet/me')
  Future<Response> getWalletCryptoPortfolio({@Query('chainId') int? chainId});

  /// Get naira wallet
  @GET(path: '/api/v1/wallet/naira-wallet')
  Future<Response> getNairaWallet();

  /// Create virtual account
  @POST(path: '/api/v1/wallet/virtual-account')
  Future<Response> createVirtualAccount(@Body() Map<String, dynamic> body);

  /// Initiate a deposit
  @POST(path: '/api/v1/wallet/deposit')
  Future<Response> initiateADeposit(
    @Body() Map<String, dynamic> body, {
    @Query('method') String? method,
  });

  /// Deposit with saved payment method
  @POST(path: '/api/v1/wallet/deposit/payment-method')
  Future<Response> depositWithSavedPaymentMethod(
    @Body() Map<String, dynamic> body,
  );

  /// Authorize a pending charge
  @POST(path: '/api/v1/wallet/deposit/authorize')
  Future<Response> authorizeAPendingCharge(@Body() Map<String, dynamic> body);

  /// Generate hosted payment link
  @POST(path: '/api/v1/wallet/deposit/payment-link')
  Future<Response> generateHostedPaymentLink(@Body() Map<String, dynamic> body);

  /// Check deposit status
  @GET(path: '/api/v1/wallet/deposit/status/{reference}')
  Future<Response> checkDepositStatus(@Path('reference') String reference);

  /// Send funds to a bank account
  @POST(path: '/api/v1/wallet/payout/bank-transfer')
  Future<Response> sendFundsToABankAccount(@Body() Map<String, dynamic> body);

  /// P2P internal transfer
  @POST(path: '/api/v1/wallet/payout/transfer')
  Future<Response> p2pInternalTransfer(@Body() Map<String, dynamic> body);

  /// List supported banks
  @GET(path: '/api/v1/wallet/utils/banks')
  Future<Response> listSupportedBanks();

  /// Resolve bank account
  @POST(path: '/api/v1/wallet/utils/verify-bank-account')
  Future<Response> resolveBankAccount(@Body() Map<String, dynamic> body);

  /// Get bank code by name
  @GET(path: '/api/v1/wallet/utils/bank-code')
  Future<Response> getBankCodeByName({@Query('name') String? name});

  /// Fund wallet with naira
  @POST(path: '/api/v1/wallet/user/fund-wallet')
  Future<Response> fundWalletWithNaira(@Body() Map<String, dynamic> body);

  /// Get available banks for withdrawal
  @GET(path: '/api/v1/wallet/get-banks')
  Future<Response> getAvailableBanksForWithdrawal();

  /// Get bank data with bank name
  @GET(path: '/api/v1/wallet/get-bank-code')
  Future<Response> getBankDataWithBankName({@Query('name') String? name});

  /// Verify bank account
  @POST(path: '/api/v1/wallet/verify-bank-account')
  Future<Response> verifyBankAccount(@Body() Map<String, dynamic> body);

  /// Make a withdrawal to a naira account
  @POST(path: '/api/v1/wallet/withdrawals')
  Future<Response> makeAWithdrawalToANairaAccount(
    @Body() Map<String, dynamic> body,
  );

  /// Transfer funds to another user
  @POST(path: '/api/v1/wallet/peer-transfer')
  Future<Response> transferFundsToAnotherUser(
    @Body() Map<String, dynamic> body,
  );
}
