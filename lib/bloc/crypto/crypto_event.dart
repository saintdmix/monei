import 'package:equatable/equatable.dart';

/// Crypto events.
abstract class CryptoEvent extends Equatable {
  const CryptoEvent();

  @override
  List<Object?> get props => [];
}

// ── EVM ──
class CryptoFetchEvmNetworks extends CryptoEvent {}

class CryptoFetchEvmPortfolio extends CryptoEvent {
  final int chainId;
  const CryptoFetchEvmPortfolio({required this.chainId});

  @override
  List<Object?> get props => [chainId];
}

class CryptoSendEvmNativeToken extends CryptoEvent {
  final String to;
  final String amount;
  final int chainId;

  const CryptoSendEvmNativeToken({
    required this.to,
    required this.amount,
    required this.chainId,
  });

  @override
  List<Object?> get props => [to, amount, chainId];
}

class CryptoSendEvmToken extends CryptoEvent {
  final String to;
  final String tokenAddress;
  final String amount;
  final int chainId;

  const CryptoSendEvmToken({
    required this.to,
    required this.tokenAddress,
    required this.amount,
    required this.chainId,
  });

  @override
  List<Object?> get props => [to, tokenAddress, amount, chainId];
}

// ── Solana ──
class CryptoFetchSolanaPortfolio extends CryptoEvent {
  final String? network;
  const CryptoFetchSolanaPortfolio({this.network});

  @override
  List<Object?> get props => [network];
}

class CryptoFetchSolanaAddress extends CryptoEvent {}

class CryptoTransferSol extends CryptoEvent {
  final String to;
  final String amount;
  final String? network;

  const CryptoTransferSol({
    required this.to,
    required this.amount,
    this.network,
  });

  @override
  List<Object?> get props => [to, amount, network];
}

class CryptoTransferSplToken extends CryptoEvent {
  final String to;
  final String tokenMintAddress;
  final String amount;
  final String? network;

  const CryptoTransferSplToken({
    required this.to,
    required this.tokenMintAddress,
    required this.amount,
    this.network,
  });

  @override
  List<Object?> get props => [to, tokenMintAddress, amount, network];
}

// ── Swap ──
class CryptoEvmSwap extends CryptoEvent {
  final String swapType; // native-to-token, token-to-token, token-to-native
  final Map<String, dynamic> body;

  const CryptoEvmSwap({required this.swapType, required this.body});

  @override
  List<Object?> get props => [swapType, body];
}

class CryptoSolanaSwap extends CryptoEvent {
  final String swapType; // sol-to-token, token-to-token, token-to-sol
  final Map<String, dynamic> body;

  const CryptoSolanaSwap({required this.swapType, required this.body});

  @override
  List<Object?> get props => [swapType, body];
}

// ── Offramp ──
class CryptoInitiateOfframp extends CryptoEvent {
  final Map<String, dynamic> body;

  const CryptoInitiateOfframp({required this.body});

  @override
  List<Object?> get props => [body];
}
