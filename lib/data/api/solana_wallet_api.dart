import 'package:chopper/chopper.dart';

part 'solana_wallet_api.chopper.dart';

@ChopperApi()
abstract class SolanaWalletApiService extends ChopperService {
  static SolanaWalletApiService create([ChopperClient? client]) =>
      _$SolanaWalletApiService(client);

  /// Get Solana wallet address
  @GET(path: '/api/v1/solana/address')
  Future<Response> getSolanaWalletAddress();

  /// Get SOL balance
  @GET(path: '/api/v1/solana/balance')
  Future<Response> getSolBalance({@Query('network') String? network});

  /// Get SPL token balance
  @GET(path: '/api/v1/solana/token-balance/{tokenMintAddress}')
  Future<Response> getSplTokenBalance(
    @Path('tokenMintAddress') String tokenMintAddress, {
    @Query('network') String? network,
  });

  /// Get Solana portfolio
  @GET(path: '/api/v1/solana/portfolio')
  Future<Response> getSolanaPortfolio({@Query('network') String? network});

  /// Transfer SOL
  @POST(path: '/api/v1/solana/transfer')
  Future<Response> transferSol(@Body() Map<String, dynamic> body);

  /// Transfer SPL token
  @POST(path: '/api/v1/solana/transfer-token')
  Future<Response> transferSplToken(@Body() Map<String, dynamic> body);
}
