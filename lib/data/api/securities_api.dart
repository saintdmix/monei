import 'package:chopper/chopper.dart';

part 'securities_api.chopper.dart';

@ChopperApi()
abstract class SecuritiesApiService extends ChopperService {
  static SecuritiesApiService create([ChopperClient? client]) =>
      _$SecuritiesApiService(client);

  /// Sync available stocks from STOX
  @POST(path: '/api/v1/securities/stocks/sync')
  Future<Response> syncAvailableStocksFromStox(@Body() Map<String, dynamic> body);

  /// Get available stocks
  @GET(path: '/api/v1/securities/stocks')
  Future<Response> getAvailableStocks();

  /// Get stock details
  @GET(path: '/api/v1/securities/stocks/{ticker}')
  Future<Response> getStockDetails(@Path('ticker') String ticker);

  /// Buy tokenized stock
  @POST(path: '/api/v1/securities/stocks/orders')
  Future<Response> buyTokenizedStock(@Body() Map<String, dynamic> body);

  /// Get user stock holdings
  @GET(path: '/api/v1/securities/users/me/holdings')
  Future<Response> getUserStockHoldings();

  /// Get specific stock holding
  @GET(path: '/api/v1/securities/users/me/holdings/{ticker}')
  Future<Response> getSpecificStockHolding(@Path('ticker') String ticker);

  /// Get STOX orders
  @GET(path: '/api/v1/securities/integrations/stox/orders')
  Future<Response> getStoxOrders();
}
