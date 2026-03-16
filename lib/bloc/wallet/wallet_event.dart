import 'package:equatable/equatable.dart';

/// Wallet events.
abstract class WalletEvent extends Equatable {
  const WalletEvent();

  @override
  List<Object?> get props => [];
}

class WalletFetchRequested extends WalletEvent {}

class WalletFetchBanks extends WalletEvent {}

class WalletVerifyBankAccount extends WalletEvent {
  final String accountNumber;
  final String bank;

  const WalletVerifyBankAccount({
    required this.accountNumber,
    required this.bank,
  });

  @override
  List<Object?> get props => [accountNumber, bank];
}

class WalletCreateVirtualAccount extends WalletEvent {
  final String nin;

  const WalletCreateVirtualAccount({required this.nin});

  @override
  List<Object?> get props => [nin];
}

class WalletFundRequested extends WalletEvent {
  final double amount;
  final String email;
  final String phoneNumber;
  final String name;

  const WalletFundRequested({
    required this.amount,
    required this.email,
    required this.phoneNumber,
    required this.name,
  });

  @override
  List<Object?> get props => [amount, email, phoneNumber, name];
}

class WalletWithdrawRequested extends WalletEvent {
  final double amount;
  final String bank;
  final String accountNumber;
  final String transactionPin;
  final String? narration;

  const WalletWithdrawRequested({
    required this.amount,
    required this.bank,
    required this.accountNumber,
    required this.transactionPin,
    this.narration,
  });

  @override
  List<Object?> get props => [amount, bank, accountNumber, transactionPin];
}

class WalletPeerTransfer extends WalletEvent {
  final String receiver;
  final double amount;
  final String transactionPin;
  final String? currency;

  const WalletPeerTransfer({
    required this.receiver,
    required this.amount,
    required this.transactionPin,
    this.currency,
  });

  @override
  List<Object?> get props => [receiver, amount, transactionPin];
}
