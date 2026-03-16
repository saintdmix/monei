import 'package:equatable/equatable.dart';
import '../../data/models/crypto_model.dart';

/// Crypto states.
abstract class CryptoState extends Equatable {
  const CryptoState();

  @override
  List<Object?> get props => [];
}

class CryptoInitial extends CryptoState {}

class CryptoLoading extends CryptoState {}

class CryptoEvmNetworksLoaded extends CryptoState {
  final List<SupportedChainModel> chains;

  const CryptoEvmNetworksLoaded({required this.chains});

  @override
  List<Object?> get props => [chains];
}

class CryptoEvmPortfolioLoaded extends CryptoState {
  final EvmPortfolioModel portfolio;

  const CryptoEvmPortfolioLoaded({required this.portfolio});

  @override
  List<Object?> get props => [portfolio];
}

class CryptoSolanaPortfolioLoaded extends CryptoState {
  final SolanaPortfolioModel portfolio;

  const CryptoSolanaPortfolioLoaded({required this.portfolio});

  @override
  List<Object?> get props => [portfolio];
}

class CryptoSolanaAddressLoaded extends CryptoState {
  final String address;

  const CryptoSolanaAddressLoaded({required this.address});

  @override
  List<Object?> get props => [address];
}

class CryptoActionSuccess extends CryptoState {
  final String message;
  final String? txHash;
  final Map<String, dynamic>? data;

  const CryptoActionSuccess({required this.message, this.txHash, this.data});

  @override
  List<Object?> get props => [message, txHash, data];
}

class CryptoError extends CryptoState {
  final String message;

  const CryptoError({required this.message});

  @override
  List<Object?> get props => [message];
}
