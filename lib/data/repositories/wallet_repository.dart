import '../../core/network/api_client.dart';
import '../../core/network/api_response.dart';
import '../models/wallet_model.dart';

/// Repository for all wallet-related API calls.
class WalletRepository {
  final ApiClient _api = ApiClient();

  /// Get wallet + crypto portfolio.
  Future<ApiResponse<WalletModel>> getWallet({int? chainId}) async {
    final response = await _api.wallet.getWalletCryptoPortfolio();
    return ApiResponse.fromResponse(
      response,
      parser: (data) => WalletModel.fromJson(data),
    );
  }

  /// Create a virtual account for the user.
  Future<ApiResponse<Map<String, dynamic>>> createVirtualAccount({
    required String nin,
    String? reference,
  }) async {
    final response = await _api.wallet.createVirtualAccount({
      'nin': nin,
      if (reference != null) 'reference': reference,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Fund wallet with Naira via Flutterwave.
  Future<ApiResponse<Map<String, dynamic>>> fundWallet({
    required double amount,
    required String email,
    required String phoneNumber,
    required String name,
    String? reference,
    String? redirectUrl,
  }) async {
    final response = await _api.wallet.fundWalletWithNaira({
      'amount': amount,
      'customer': {'email': email, 'phoneNumber': phoneNumber, 'name': name},
      'customization': {'title': 'Fund Wallet'},
      if (reference != null) 'reference': reference,
      if (redirectUrl != null) 'redirectUrl': redirectUrl,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Get list of banks for withdrawal.
  Future<ApiResponse<List<BankModel>>> getBanks() async {
    final response = await _api.wallet.getAvailableBanksForWithdrawal();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is List) {
          return data
              .map((e) => BankModel.fromJson(e as Map<String, dynamic>))
              .toList();
        }
        return <BankModel>[];
      },
    );
  }

  /// Get list of banks from wallet utils.
  Future<ApiResponse<List<BankModel>>> getUtilsBanks() async {
    final response = await _api.wallet.listSupportedBanks();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is List) {
          return data
              .map((e) => BankModel.fromJson(e as Map<String, dynamic>))
              .toList();
        }
        return <BankModel>[];
      },
    );
  }

  /// Verify a bank account.
  Future<ApiResponse<BankAccountModel>> verifyBankAccount({
    required String accountNumber,
    required String bank,
  }) async {
    final response = await _api.wallet.verifyBankAccount({
      'accountNumber': accountNumber,
      'bank': bank,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) => BankAccountModel.fromJson(data),
    );
  }

  /// Withdraw to a Naira bank account.
  Future<ApiResponse<Map<String, dynamic>>> withdraw({
    required double amount,
    required String bank,
    required String accountNumber,
    required String transactionPin,
    String? currency,
    String? reference,
    String? narration,
  }) async {
    final response = await _api.wallet.makeAWithdrawalToANairaAccount({
      'amount': amount,
      'bank': bank,
      'accountNumber': accountNumber,
      'transactionPin': transactionPin,
      if (currency != null) 'currency': currency,
      if (reference != null) 'reference': reference,
      if (narration != null) 'narration': narration,
    });
    return ApiResponse.fromResponse(response);
  }

  /// P2P transfer to another user.
  Future<ApiResponse<Map<String, dynamic>>> peerTransfer({
    required String receiver,
    required double amount,
    required String transactionPin,
    String? currency,
  }) async {
    final response = await _api.wallet.transferFundsToAnotherUser({
      'receiver': receiver,
      'amount': amount,
      'transactionPin': transactionPin,
      if (currency != null) 'currency': currency,
    });
    return ApiResponse.fromResponse(response);
  }

  /// Initiate a deposit (Card, Transfer, USSD).
  Future<ApiResponse<Map<String, dynamic>>> initiateDeposit({
    required Map<String, dynamic> body,
  }) async {
    final response = await _api.wallet.initiateADeposit(body);
    return ApiResponse.fromResponse(response);
  }

  /// Send funds to a bank account (payout).
  Future<ApiResponse<Map<String, dynamic>>> bankTransfer({
    required Map<String, dynamic> body,
  }) async {
    final response = await _api.wallet.sendFundsToABankAccount(body);
    return ApiResponse.fromResponse(response);
  }

  /// Check deposit status.
  Future<ApiResponse<Map<String, dynamic>>> checkDepositStatus(
    String reference,
  ) async {
    final response = await _api.wallet.checkDepositStatus(reference);
    return ApiResponse.fromResponse(response);
  }

  /// Generate hosted payment link.
  Future<ApiResponse<Map<String, dynamic>>> generatePaymentLink({
    required Map<String, dynamic> body,
  }) async {
    final response = await _api.wallet.generateHostedPaymentLink(body);
    return ApiResponse.fromResponse(response);
  }
}
