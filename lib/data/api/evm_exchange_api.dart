import 'package:chopper/chopper.dart';

part 'evm_exchange_api.chopper.dart';

@ChopperApi()
abstract class EvmExchangeApiService extends ChopperService {
  static EvmExchangeApiService create([ChopperClient? client]) =>
      _$EvmExchangeApiService(client);

  /// Get quote: native → ERC20
  @POST(path: '/api/v1/evm-exchange/price/native-to-token')
  Future<Response> getQuoteNativeErc20(@Body() Map<String, dynamic> body);

  /// Swap: native → ERC20
  @POST(path: '/api/v1/evm-exchange/native-to-token')
  Future<Response> swapNativeErc20(@Body() Map<String, dynamic> body);

  /// Get quote: ERC20 → ERC20
  @POST(path: '/api/v1/evm-exchange/price/token-to-token')
  Future<Response> getQuoteErc20Erc20(@Body() Map<String, dynamic> body);

  /// Swap: ERC20 → ERC20
  @POST(path: '/api/v1/evm-exchange/token-to-token')
  Future<Response> swapErc20Erc20(@Body() Map<String, dynamic> body);

  /// Get quote: ERC20 → native
  @POST(path: '/api/v1/evm-exchange/price/token-to-native')
  Future<Response> getQuoteErc20Native(@Body() Map<String, dynamic> body);

  /// Swap: ERC20 → native
  @POST(path: '/api/v1/evm-exchange/token-to-native')
  Future<Response> swapErc20Native(@Body() Map<String, dynamic> body);
}
