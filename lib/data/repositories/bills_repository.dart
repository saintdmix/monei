import '../../core/network/api_client.dart';
import '../../core/network/api_response.dart';
import '../models/bill_model.dart';

/// Repository for all bill payment API calls.
class BillsRepository {
  final ApiClient _api = ApiClient();

  // ── Discovery ──

  /// List electricity distribution companies.
  Future<ApiResponse<List<BillerItemModel>>> getElectricityBillers() async {
    final response = await _api.bills.listElectricityDiscos();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is List) {
          return data
              .map((e) => BillerItemModel.fromJson(e as Map<String, dynamic>))
              .toList();
        }
        return <BillerItemModel>[];
      },
    );
  }

  /// Get biller items for a category + provider (e.g., data plans).
  Future<ApiResponse<List<BillerItemModel>>> getBillerItems(
    String category,
    String billerName,
  ) async {
    final response = await _api.bills.getBillerItems(category, billerName);
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is List) {
          return data
              .map((e) => BillerItemModel.fromJson(e as Map<String, dynamic>))
              .toList();
        }
        return <BillerItemModel>[];
      },
    );
  }

  // ── Validation ──

  /// Validate customer details (meter number, smartcard, phone).
  Future<ApiResponse<Map<String, dynamic>>> validateCustomer(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.bills.validateCustomerDetails(body);
    return ApiResponse.fromResponse(response);
  }

  // ── Payments ──

  /// Buy airtime.
  Future<ApiResponse<BillPaymentResult>> buyAirtime({
    required String billerName,
    required String customer,
    required double amount,
    required String transactionPin,
  }) async {
    final response = await _api.bills.buyAirtime({
      'billerName': billerName,
      'customer': customer,
      'amount': amount,
      'transactionPin': transactionPin,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) =>
          BillPaymentResult.fromJson(data is Map<String, dynamic> ? data : {}),
    );
  }

  /// Buy mobile data.
  Future<ApiResponse<BillPaymentResult>> buyMobileData({
    required String billerName,
    required String customer,
    required String itemCode,
    required double amount,
    required String transactionPin,
  }) async {
    final response = await _api.bills.buyMobileData({
      'billerName': billerName,
      'customer': customer,
      'item_code': itemCode,
      'amount': amount,
      'transactionPin': transactionPin,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) =>
          BillPaymentResult.fromJson(data is Map<String, dynamic> ? data : {}),
    );
  }

  /// Pay electricity bill.
  Future<ApiResponse<BillPaymentResult>> payElectricity({
    required String billerName,
    required String customer,
    required double amount,
    required String billerCode,
    required String transactionPin,
  }) async {
    final response = await _api.bills.payElectricityBill({
      'billerName': billerName,
      'customer': customer,
      'amount': amount,
      'billerCode': billerCode,
      'transactionPin': transactionPin,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) =>
          BillPaymentResult.fromJson(data is Map<String, dynamic> ? data : {}),
    );
  }

  /// Subscribe to cable TV.
  Future<ApiResponse<BillPaymentResult>> subscribeCableTv({
    required String billerName,
    required String customer,
    required String itemCode,
    required double amount,
    required String transactionPin,
  }) async {
    final response = await _api.bills.subscribeToCableTv({
      'billerName': billerName,
      'customer': customer,
      'item_code': itemCode,
      'amount': amount,
      'transactionPin': transactionPin,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) =>
          BillPaymentResult.fromJson(data is Map<String, dynamic> ? data : {}),
    );
  }

  // ── History ──

  /// Get bill transaction history.
  Future<ApiResponse<List<BillHistoryModel>>> getBillHistory() async {
    final response = await _api.bills.billTransactionHistory();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map && data['transactions'] is List) {
          return (data['transactions'] as List)
              .map((e) => BillHistoryModel.fromJson(e as Map<String, dynamic>))
              .toList();
        }
        if (data is List) {
          return data
              .map((e) => BillHistoryModel.fromJson(e as Map<String, dynamic>))
              .toList();
        }
        return <BillHistoryModel>[];
      },
    );
  }

  /// Get a bill by reference.
  Future<ApiResponse<BillHistoryModel>> getBillByReference(
    String reference,
  ) async {
    final response = await _api.bills.getBillTransactionByReference(reference);
    return ApiResponse.fromResponse(
      response,
      parser: (data) => BillHistoryModel.fromJson(data),
    );
  }

  /// Generate receipt for a bill transaction.
  Future<ApiResponse<Map<String, dynamic>>> generateReceipt(
    String transactionId,
  ) async {
    final response = await _api.bills.generateBillReceipt(transactionId);
    return ApiResponse.fromResponse(response);
  }
}
