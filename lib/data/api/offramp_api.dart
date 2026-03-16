import 'package:chopper/chopper.dart';

part 'offramp_api.chopper.dart';

@ChopperApi()
abstract class OfframpApiService extends ChopperService {
  static OfframpApiService create([ChopperClient? client]) =>
      _$OfframpApiService(client);

  /// Get supported payout banks
  @GET(path: '/api/v1/offramp/payouts/banks')
  Future<Response> getSupportedPayoutBanks();

  /// Verify bank account
  @POST(path: '/api/v1/offramp/payouts/verify')
  Future<Response> verifyBankAccount(@Body() Map<String, dynamic> body);

  /// List supported offramp assets
  @GET(path: '/api/v1/offramp/exchange/assets')
  Future<Response> listSupportedOfframpAssets();

  /// Get crypto-to-fiat quote
  @GET(path: '/api/v1/offramp/exchange/quote')
  Future<Response> getCryptoToFiatQuote({
    @Query('token') String? token,
    @Query('network') String? network,
    @Query('amount') String? amount,
    @Query('fiat') String? fiat,
  });

  /// Initiate crypto-to-fiat order
  @POST(path: '/api/v1/offramp/exchange/initiate')
  Future<Response> initiateCryptoToFiatOrder(@Body() Map<String, dynamic> body);

  /// Get offramp transaction history
  @GET(path: '/api/v1/offramp/ledger/history')
  Future<Response> getOfframpTransactionHistory({
    @Query('limit') int? limit,
    @Query('page') int? page,
  });

  /// Track offramp transaction
  @GET(path: '/api/v1/offramp/ledger/status/{reference}')
  Future<Response> trackOfframpTransaction(@Path('reference') String reference);
}
