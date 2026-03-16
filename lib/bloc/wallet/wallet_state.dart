import 'package:equatable/equatable.dart';
import '../../data/models/wallet_model.dart';

/// Wallet states.
abstract class WalletState extends Equatable {
  const WalletState();

  @override
  List<Object?> get props => [];
}

class WalletInitial extends WalletState {}

class WalletLoading extends WalletState {}

class WalletLoaded extends WalletState {
  final WalletModel wallet;

  const WalletLoaded({required this.wallet});

  @override
  List<Object?> get props => [wallet];
}

class WalletBanksLoaded extends WalletState {
  final List<BankModel> banks;

  const WalletBanksLoaded({required this.banks});

  @override
  List<Object?> get props => [banks];
}

class WalletBankAccountVerified extends WalletState {
  final BankAccountModel bankAccount;

  const WalletBankAccountVerified({required this.bankAccount});

  @override
  List<Object?> get props => [bankAccount];
}

class WalletActionSuccess extends WalletState {
  final String message;
  final Map<String, dynamic>? data;

  const WalletActionSuccess({required this.message, this.data});

  @override
  List<Object?> get props => [message, data];
}

class WalletError extends WalletState {
  final String message;

  const WalletError({required this.message});

  @override
  List<Object?> get props => [message];
}
