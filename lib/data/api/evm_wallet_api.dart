import 'package:chopper/chopper.dart';

part 'evm_wallet_api.chopper.dart';

@ChopperApi()
abstract class EvmWalletApiService extends ChopperService {
  static EvmWalletApiService create([ChopperClient? client]) =>
      _$EvmWalletApiService(client);

  /// Get supported blockchain networks
  @GET(path: '/api/v1/evm/networks')
  Future<Response> getSupportedBlockchainNetworks();

  /// Get native token balance
  @GET(path: '/api/v1/evm/balance/native')
  Future<Response> getNativeTokenBalance({@Query('chainId') int? chainId});

  /// Get ERC20 token balance
  @GET(path: '/api/v1/evm/balance/token')
  Future<Response> getErc20TokenBalance({
    @Query('tokenAddress') String? tokenAddress,
    @Query('chainId') int? chainId,
  });

  /// Get EVM portfolio
  @GET(path: '/api/v1/evm/portfolio/{chainId}')
  Future<Response> getEvmPortfolio(@Path('chainId') String chainId);

  /// Send native token
  @POST(path: '/api/v1/evm/send/native')
  Future<Response> sendNativeToken(@Body() Map<String, dynamic> body);

  /// Send ERC20 token
  @POST(path: '/api/v1/evm/send/token')
  Future<Response> sendErc20Token(@Body() Map<String, dynamic> body);
}
