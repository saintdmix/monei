import '../../core/network/api_client.dart';
import '../../core/network/api_response.dart';
import '../models/crypto_model.dart';

/// Repository for EVM and Solana wallet + exchange API calls.
class CryptoRepository {
  final ApiClient _api = ApiClient();

  // ── EVM Wallet ──

  /// Get all supported EVM chains.
  Future<ApiResponse<List<SupportedChainModel>>> getSupportedNetworks() async {
    final response = await _api.evmWallet.getSupportedBlockchainNetworks();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is List) {
          return data
              .map(
                (e) => SupportedChainModel.fromJson(e as Map<String, dynamic>),
              )
              .toList();
        }
        return <SupportedChainModel>[];
      },
    );
  }

  /// Get native token balance for a chain.
  Future<ApiResponse<String>> getEvmNativeBalance(int chainId) async {
    final response = await _api.evmWallet.getNativeTokenBalance();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['balance'] ?? '0';
        return '0';
      },
    );
  }

  /// Get ERC20 token balance.
  Future<ApiResponse<String>> getEvmTokenBalance(
    String tokenAddress,
    int chainId,
  ) async {
    final response = await _api.evmWallet.getErc20TokenBalance();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['balance'] ?? '0';
        return '0';
      },
    );
  }

  /// Get EVM portfolio for a chain.
  Future<ApiResponse<EvmPortfolioModel>> getEvmPortfolio(int chainId) async {
    final response = await _api.evmWallet.getEvmPortfolio(chainId.toString());
    return ApiResponse.fromResponse(
      response,
      parser: (data) => EvmPortfolioModel.fromJson(data),
    );
  }

  /// Send native EVM token.
  Future<ApiResponse<String>> sendEvmNativeToken({
    required String to,
    required String amount,
    required int chainId,
  }) async {
    final response = await _api.evmWallet.sendNativeToken({
      'to': to,
      'amount': amount,
      'chainId': chainId,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['txHash'] ?? '';
        return '';
      },
    );
  }

  /// Send ERC20 token.
  Future<ApiResponse<String>> sendEvmToken({
    required String to,
    required String tokenAddress,
    required String amount,
    required int chainId,
  }) async {
    final response = await _api.evmWallet.sendErc20Token({
      'to': to,
      'tokenAddress': tokenAddress,
      'amount': amount,
      'chainId': chainId,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['txHash'] ?? '';
        return '';
      },
    );
  }

  // ── Solana Wallet ──

  /// Get Solana wallet address.
  Future<ApiResponse<String>> getSolanaAddress() async {
    final response = await _api.solanaWallet.getSolanaWalletAddress();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['address'] ?? '';
        return '';
      },
    );
  }

  /// Get SOL balance.
  Future<ApiResponse<String>> getSolBalance({String? network}) async {
    final response = await _api.solanaWallet.getSolBalance();
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['balance'] ?? '0';
        return '0';
      },
    );
  }

  /// Get SPL token balance.
  Future<ApiResponse<String>> getSplTokenBalance(
    String tokenMintAddress, {
    String? network,
  }) async {
    final response = await _api.solanaWallet.getSplTokenBalance(
      tokenMintAddress,
    );
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['balance'] ?? '0';
        return '0';
      },
    );
  }

  /// Get Solana portfolio.
  Future<ApiResponse<SolanaPortfolioModel>> getSolanaPortfolio({
    String? network,
  }) async {
    final response = await _api.solanaWallet.getSolanaPortfolio();
    return ApiResponse.fromResponse(
      response,
      parser: (data) => SolanaPortfolioModel.fromJson(data),
    );
  }

  /// Transfer SOL.
  Future<ApiResponse<String>> transferSol({
    required String to,
    required String amount,
    String? network,
  }) async {
    final response = await _api.solanaWallet.transferSol({
      'to': to,
      'amount': amount,
      if (network != null) 'network': network,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['signature'] ?? '';
        return '';
      },
    );
  }

  /// Transfer SPL token.
  Future<ApiResponse<String>> transferSplToken({
    required String to,
    required String tokenMintAddress,
    required String amount,
    String? network,
  }) async {
    final response = await _api.solanaWallet.transferSplToken({
      'to': to,
      'tokenMintAddress': tokenMintAddress,
      'amount': amount,
      if (network != null) 'network': network,
    });
    return ApiResponse.fromResponse(
      response,
      parser: (data) {
        if (data is Map) return data['signature'] ?? '';
        return '';
      },
    );
  }

  // ── EVM Exchange ──

  /// Get EVM swap quote (native to token).
  Future<ApiResponse<Map<String, dynamic>>> getEvmSwapQuoteNativeToToken(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.evmExchange.getQuoteNativeErc20(body);
    return ApiResponse.fromResponse(response);
  }

  /// Execute EVM swap (native to token).
  Future<ApiResponse<String>> evmSwapNativeToToken(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.evmExchange.swapNativeErc20(body);
    return ApiResponse.fromResponse(
      response,
      parser: (data) => data['txHash'] ?? '',
    );
  }

  /// Get EVM swap quote (token to token).
  Future<ApiResponse<Map<String, dynamic>>> getEvmSwapQuoteTokenToToken(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.evmExchange.getQuoteErc20Erc20(body);
    return ApiResponse.fromResponse(response);
  }

  /// Execute EVM swap (token to token).
  Future<ApiResponse<String>> evmSwapTokenToToken(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.evmExchange.swapErc20Erc20(body);
    return ApiResponse.fromResponse(
      response,
      parser: (data) => data['txHash'] ?? '',
    );
  }

  /// Get EVM swap quote (token to native).
  Future<ApiResponse<Map<String, dynamic>>> getEvmSwapQuoteTokenToNative(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.evmExchange.getQuoteErc20Native(body);
    return ApiResponse.fromResponse(response);
  }

  /// Execute EVM swap (token to native).
  Future<ApiResponse<String>> evmSwapTokenToNative(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.evmExchange.swapErc20Native(body);
    return ApiResponse.fromResponse(
      response,
      parser: (data) => data['txHash'] ?? '',
    );
  }

  // ── Solana Exchange ──

  /// Get Solana swap quote (SOL to token).
  Future<ApiResponse<Map<String, dynamic>>> getSolSwapQuoteSolToToken() async {
    final response = await _api.solanaExchange.getQuoteSolSplToken();
    return ApiResponse.fromResponse(response);
  }

  /// Get Solana swap quote (token to SOL).
  Future<ApiResponse<Map<String, dynamic>>> getSolSwapQuoteTokenToSol() async {
    final response = await _api.solanaExchange.getQuoteSplTokenSol();
    return ApiResponse.fromResponse(response);
  }

  /// Get Solana swap quote (token to token).
  Future<ApiResponse<Map<String, dynamic>>>
  getSolSwapQuoteTokenToToken() async {
    final response = await _api.solanaExchange.getQuoteSplTokenSplToken();
    return ApiResponse.fromResponse(response);
  }

  /// Execute Solana swap (SOL to token).
  Future<ApiResponse<Map<String, dynamic>>> solSwapSolToToken(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.solanaExchange.swapSolSplToken(body);
    return ApiResponse.fromResponse(response);
  }

  /// Execute Solana swap (token to token).
  Future<ApiResponse<Map<String, dynamic>>> solSwapTokenToToken(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.solanaExchange.swapSplTokenSplToken(body);
    return ApiResponse.fromResponse(response);
  }

  /// Execute Solana swap (token to SOL).
  Future<ApiResponse<Map<String, dynamic>>> solSwapTokenToSol(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.solanaExchange.swapSplTokenSol(body);
    return ApiResponse.fromResponse(response);
  }

  // ── Offramp ──

  /// Get supported payout banks for offramp.
  Future<ApiResponse<Map<String, dynamic>>> getOfframpBanks() async {
    final response = await _api.offramp.getSupportedPayoutBanks();
    return ApiResponse.fromResponse(response);
  }

  /// Verify offramp bank account.
  Future<ApiResponse<Map<String, dynamic>>> verifyOfframpBankAccount(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.offramp.verifyBankAccount(body);
    return ApiResponse.fromResponse(response);
  }

  /// List supported offramp assets.
  Future<ApiResponse<Map<String, dynamic>>> getOfframpAssets() async {
    final response = await _api.offramp.listSupportedOfframpAssets();
    return ApiResponse.fromResponse(response);
  }

  /// Get crypto-to-fiat quote.
  Future<ApiResponse<Map<String, dynamic>>> getOfframpQuote() async {
    final response = await _api.offramp.getCryptoToFiatQuote();
    return ApiResponse.fromResponse(response);
  }

  /// Initiate crypto-to-fiat order.
  Future<ApiResponse<Map<String, dynamic>>> initiateOfframp(
    Map<String, dynamic> body,
  ) async {
    final response = await _api.offramp.initiateCryptoToFiatOrder(body);
    return ApiResponse.fromResponse(response);
  }

  /// Get offramp transaction history.
  Future<ApiResponse<Map<String, dynamic>>> getOfframpHistory() async {
    final response = await _api.offramp.getOfframpTransactionHistory();
    return ApiResponse.fromResponse(response);
  }

  /// Track offramp transaction by reference.
  Future<ApiResponse<Map<String, dynamic>>> trackOfframp(
    String reference,
  ) async {
    final response = await _api.offramp.trackOfframpTransaction(reference);
    return ApiResponse.fromResponse(response);
  }
}
