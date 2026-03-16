import 'package:chopper/chopper.dart';

part 'solana_exchange_api.chopper.dart';

@ChopperApi()
abstract class SolanaExchangeApiService extends ChopperService {
  static SolanaExchangeApiService create([ChopperClient? client]) =>
      _$SolanaExchangeApiService(client);

  /// Get quote: SOL → SPL token
  @GET(path: '/api/v1/solana-exchange/quote/sol-to-token')
  Future<Response> getQuoteSolSplToken({
    @Query('outputMint') String? outputMint,
    @Query('amount') String? amount,
  });

  /// Get quote: SPL token → SOL
  @GET(path: '/api/v1/solana-exchange/quote/token-to-sol')
  Future<Response> getQuoteSplTokenSol({
    @Query('inputMint') String? inputMint,
    @Query('amount') String? amount,
  });

  /// Get quote: SPL token → SPL token
  @GET(path: '/api/v1/solana-exchange/quote/token-to-token')
  Future<Response> getQuoteSplTokenSplToken({
    @Query('inputMint') String? inputMint,
    @Query('outputMint') String? outputMint,
    @Query('amount') String? amount,
  });

  /// Swap SOL → SPL token
  @POST(path: '/api/v1/solana-exchange/swap-sol-to-token')
  Future<Response> swapSolSplToken(@Body() Map<String, dynamic> body);

  /// Swap SPL token → SPL token
  @POST(path: '/api/v1/solana-exchange/swap-token-to-token')
  Future<Response> swapSplTokenSplToken(@Body() Map<String, dynamic> body);

  /// Swap SPL token → SOL
  @POST(path: '/api/v1/solana-exchange/swap-token-to-sol')
  Future<Response> swapSplTokenSol(@Body() Map<String, dynamic> body);
}
