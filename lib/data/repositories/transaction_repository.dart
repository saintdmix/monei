import '../../core/network/api_client.dart';
import '../../core/network/api_response.dart';
import '../models/transaction_model.dart';

/// Repository for all transaction-related API calls.
class TransactionRepository {
  final ApiClient _api = ApiClient();

  /// Get paginated user transactions with optional filters.
  Future<ApiResponse<PaginatedTransactions>> getUserTransactions({
    int page = 1,
    int limit = 10,
    String? status, // PENDING, SUCCESS, FAILED, COMPLETED
    String? type, // DEBIT, CREDIT, PEER-TRANSFER
    double? minAmount,
    double? maxAmount,
    String? currency,
    String? narration,
    String? reference,
    String? startDate,
    String? endDate,
    String sortBy = 'createdAt',
    String sortOrder = 'desc',
  }) async {
    final response = await _api.transactions.getAllUserTransactions(
      page: page,
      limit: limit,
      status: status,
      type: type,
      minAmount: minAmount,
      maxAmount: maxAmount,
      currency: currency,
      narration: narration,
      reference: reference,
      startDate: startDate,
      endDate: endDate,
      sortBy: sortBy,
      sortOrder: sortOrder,
    );
    return ApiResponse.fromResponse(
      response,
      parser: (data) => PaginatedTransactions.fromJson(data),
    );
  }

  /// Get a single transaction by ID.
  Future<ApiResponse<TransactionModel>> getTransactionById(String id) async {
    final response = await _api.transactions.getTransactionById(id);
    return ApiResponse.fromResponse(
      response,
      parser: (data) => TransactionModel.fromJson(data),
    );
  }

  /// Get a transaction by reference.
  Future<ApiResponse<TransactionModel>> getTransactionByReference(
    String reference,
  ) async {
    final response = await _api.transactions.getTransactionByReference(
      reference,
    );
    return ApiResponse.fromResponse(
      response,
      parser: (data) => TransactionModel.fromJson(data),
    );
  }
}
