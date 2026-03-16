import 'package:chopper/chopper.dart';

part 'transactions_api.chopper.dart';

@ChopperApi()
abstract class TransactionsApiService extends ChopperService {
  static TransactionsApiService create([ChopperClient? client]) =>
      _$TransactionsApiService(client);

  /// Get all user transactions with optional query filters.
  @GET(path: '/api/v1/transactions/user')
  Future<Response> getAllUserTransactions({
    @Query('page') int? page,
    @Query('limit') int? limit,
    @Query('status') String? status,
    @Query('type') String? type,
    @Query('minAmount') double? minAmount,
    @Query('maxAmount') double? maxAmount,
    @Query('currency') String? currency,
    @Query('narration') String? narration,
    @Query('reference') String? reference,
    @Query('startDate') String? startDate,
    @Query('endDate') String? endDate,
    @Query('sortBy') String? sortBy,
    @Query('sortOrder') String? sortOrder,
  });

  /// Get transaction by ID
  @GET(path: '/api/v1/transactions/{id}')
  Future<Response> getTransactionById(@Path('id') String id);

  /// Get transaction by reference
  @GET(path: '/api/v1/transactions/reference/{reference}')
  Future<Response> getTransactionByReference(
    @Path('reference') String reference,
  );

  /// Flutterwave webhook callback
  @POST(path: '/api/v1/transactions/flutterwave-transaction-callback')
  Future<Response> flutterwaveWebhookCallback(
    @Body() Map<String, dynamic> body,
  );

  /// Flutterwave TX callback (alternate)
  @POST(path: '/api/v1/transactions/flw-tx-callback')
  Future<Response> flutterwaveTxCallbackAlternate(
    @Body() Map<String, dynamic> body,
  );
}
