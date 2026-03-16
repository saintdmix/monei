import 'package:equatable/equatable.dart';

/// EVM portfolio model matching UserEvmPortfolioDto.
class EvmPortfolioModel extends Equatable {
  final String userId;
  final String walletAddress;
  final String network;
  final String totalPortfolioValueUSD;
  final TokenBalanceModel nativeToken;
  final List<TokenBalanceModel> tokens;
  final String? updatedAt;

  const EvmPortfolioModel({
    required this.userId,
    required this.walletAddress,
    required this.network,
    required this.totalPortfolioValueUSD,
    required this.nativeToken,
    required this.tokens,
    this.updatedAt,
  });

  factory EvmPortfolioModel.fromJson(Map<String, dynamic> json) {
    return EvmPortfolioModel(
      userId: json['userId'] ?? '',
      walletAddress: json['walletAddress'] ?? '',
      network: json['network'] ?? '',
      totalPortfolioValueUSD: json['totalPortfolioValueUSD'] ?? '0',
      nativeToken: TokenBalanceModel.fromJson(json['nativeToken'] ?? {}),
      tokens:
          (json['tokens'] as List<dynamic>?)
              ?.map(
                (e) => TokenBalanceModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      updatedAt: json['updatedAt'],
    );
  }

  @override
  List<Object?> get props => [
    userId,
    walletAddress,
    network,
    totalPortfolioValueUSD,
  ];
}

/// Token balance model matching UserTokenBalanceDto.
class TokenBalanceModel extends Equatable {
  final String? contractAddress;
  final String name;
  final String symbol;
  final int decimals;
  final String? logoUrl;
  final String type; // native or token
  final String balance;
  final String balanceUSD;
  final String priceUSD;
  final String rawBalance;
  final String network;

  const TokenBalanceModel({
    this.contractAddress,
    required this.name,
    required this.symbol,
    required this.decimals,
    this.logoUrl,
    required this.type,
    required this.balance,
    required this.balanceUSD,
    required this.priceUSD,
    required this.rawBalance,
    required this.network,
  });

  factory TokenBalanceModel.fromJson(Map<String, dynamic> json) {
    return TokenBalanceModel(
      contractAddress: json['contractAddress'],
      name: json['name'] ?? '',
      symbol: json['symbol'] ?? '',
      decimals: json['decimals'] ?? 18,
      logoUrl: json['logoUrl'],
      type: json['type'] ?? 'token',
      balance: json['balance'] ?? '0',
      balanceUSD: json['balanceUSD'] ?? '0',
      priceUSD: json['priceUSD'] ?? '0',
      rawBalance: json['rawBalance'] ?? '0',
      network: json['network'] ?? '',
    );
  }

  @override
  List<Object?> get props => [contractAddress, symbol, balance, network];
}

/// Solana portfolio model matching PortfolioDto.
class SolanaPortfolioModel extends Equatable {
  final String userId;
  final String address;
  final String nativeBalance;
  final String nativeBalanceLamports;
  final double nativeBalanceUsd;
  final List<SolanaTokenModel> tokens;
  final double totalValueUsd;

  const SolanaPortfolioModel({
    required this.userId,
    required this.address,
    required this.nativeBalance,
    required this.nativeBalanceLamports,
    required this.nativeBalanceUsd,
    required this.tokens,
    required this.totalValueUsd,
  });

  factory SolanaPortfolioModel.fromJson(Map<String, dynamic> json) {
    return SolanaPortfolioModel(
      userId: json['userId'] ?? '',
      address: json['address'] ?? '',
      nativeBalance: json['nativeBalance'] ?? '0',
      nativeBalanceLamports: json['nativeBalanceLamports'] ?? '0',
      nativeBalanceUsd: (json['nativeBalanceUsd'] ?? 0).toDouble(),
      tokens:
          (json['tokens'] as List<dynamic>?)
              ?.map((e) => SolanaTokenModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalValueUsd: (json['totalValueUsd'] ?? 0).toDouble(),
    );
  }

  @override
  List<Object?> get props => [userId, address, nativeBalance, totalValueUsd];
}

/// Solana token model matching TokenInfoDto.
class SolanaTokenModel extends Equatable {
  final String mintAddress;
  final String name;
  final String symbol;
  final String balance;
  final String rawBalance;
  final int decimals;
  final double priceUsd;
  final double valueUsd;

  const SolanaTokenModel({
    required this.mintAddress,
    required this.name,
    required this.symbol,
    required this.balance,
    required this.rawBalance,
    required this.decimals,
    required this.priceUsd,
    required this.valueUsd,
  });

  factory SolanaTokenModel.fromJson(Map<String, dynamic> json) {
    return SolanaTokenModel(
      mintAddress: json['mintAddress'] ?? '',
      name: json['name'] ?? '',
      symbol: json['symbol'] ?? '',
      balance: json['balance'] ?? '0',
      rawBalance: json['rawBalance'] ?? '0',
      decimals: json['decimals'] ?? 0,
      priceUsd: (json['priceUsd'] ?? 0).toDouble(),
      valueUsd: (json['valueUsd'] ?? 0).toDouble(),
    );
  }

  @override
  List<Object?> get props => [mintAddress, symbol, balance, valueUsd];
}

/// Supported EVM chain model matching SupportedChainDto.
class SupportedChainModel extends Equatable {
  final int chainId;
  final String name;
  final String nativeToken;
  final String blockExplorerUrl;
  final bool isTestnet;

  const SupportedChainModel({
    required this.chainId,
    required this.name,
    required this.nativeToken,
    required this.blockExplorerUrl,
    required this.isTestnet,
  });

  factory SupportedChainModel.fromJson(Map<String, dynamic> json) {
    return SupportedChainModel(
      chainId: json['chainId'] ?? 0,
      name: json['name'] ?? '',
      nativeToken: json['nativeToken'] ?? '',
      blockExplorerUrl: json['blockExplorerUrl'] ?? '',
      isTestnet: json['isTestnet'] ?? false,
    );
  }

  @override
  List<Object?> get props => [chainId, name, nativeToken];
}
