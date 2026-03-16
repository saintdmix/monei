import 'package:equatable/equatable.dart';

/// Wallet model matching UserWalletDto from the API.
class WalletModel extends Equatable {
  final String nairaBalance;
  final Map<String, dynamic>? evmPortfolio;
  final Map<String, dynamic>? solPortfolio;
  final List<SubWalletModel> subwallets;

  const WalletModel({
    required this.nairaBalance,
    this.evmPortfolio,
    this.solPortfolio,
    required this.subwallets,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    double parseDouble(dynamic value) {
      if (value is num) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? 0.0;
      return 0.0;
    }

    return WalletModel(
      nairaBalance: json['nairaBalance'],
      evmPortfolio: json['evmPortfolio'],
      solPortfolio: json['solPortfolio'],
      subwallets:
          (json['subwallets'] as List<dynamic>?)
              ?.map((e) => SubWalletModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  @override
  List<Object?> get props => [nairaBalance, subwallets];
}

/// Sub-wallet model matching SubWalletDto.
class SubWalletModel extends Equatable {
  final String id;
  final String parentWalletId;
  final String type; // FIAT or CRYPTO
  final String currency;
  final double balance;
  final String? chain;
  final String? publicAddress;
  final Map<String, dynamic>? evmPortfolio;
  final Map<String, dynamic>? solPortfolio;

  const SubWalletModel({
    required this.id,
    required this.parentWalletId,
    required this.type,
    required this.currency,
    required this.balance,
    this.chain,
    this.publicAddress,
    this.evmPortfolio,
    this.solPortfolio,
  });

  factory SubWalletModel.fromJson(Map<String, dynamic> json) {
    double parseDouble(dynamic value) {
      if (value is num) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? 0.0;
      return 0.0;
    }

    return SubWalletModel(
      id: json['id'] ?? '',
      parentWalletId: json['parentWalletId'] ?? '',
      type: json['type'] ?? 'FIAT',
      currency: json['currency'] ?? '',
      balance: parseDouble(json['balance']),
      chain: json['chain'],
      publicAddress: json['publicAddress'],
      evmPortfolio: json['evmPortfolio'],
      solPortfolio: json['solPortfolio'],
    );
  }

  @override
  List<Object?> get props => [id, type, currency, balance];
}

/// Virtual account model.
class VirtualAccountModel extends Equatable {
  final String id;
  final String bankName;
  final String accountNumber;
  final String accountName;
  final String? bankCode;

  const VirtualAccountModel({
    required this.id,
    required this.bankName,
    required this.accountNumber,
    required this.accountName,
    this.bankCode,
  });

  factory VirtualAccountModel.fromJson(Map<String, dynamic> json) {
    return VirtualAccountModel(
      id: json['id'] ?? '',
      bankName: json['bankName'] ?? '',
      accountNumber: json['accountNumber'] ?? '',
      accountName: json['accountName'] ?? '',
      bankCode: json['bankCode'],
    );
  }

  @override
  List<Object?> get props => [id, bankName, accountNumber];
}

/// Bank model matching BankDto.
class BankModel extends Equatable {
  final String id;
  final String code;
  final String name;

  const BankModel({required this.id, required this.code, required this.name});

  factory BankModel.fromJson(Map<String, dynamic> json) {
    return BankModel(
      id: json['id']?.toString() ?? '',
      code: json['code'] ?? '',
      name: json['name'] ?? '',
    );
  }

  @override
  List<Object?> get props => [id, code, name];
}

/// Bank account verification result.
class BankAccountModel extends Equatable {
  final String accountName;
  final String accountNumber;
  final String bankCode;
  final String bankName;

  const BankAccountModel({
    required this.accountName,
    required this.accountNumber,
    required this.bankCode,
    required this.bankName,
  });

  factory BankAccountModel.fromJson(Map<String, dynamic> json) {
    return BankAccountModel(
      accountName: json['accountName'] ?? '',
      accountNumber: json['accountNumber'] ?? '',
      bankCode: json['bankCode'] ?? '',
      bankName: json['bankName'] ?? '',
    );
  }

  @override
  List<Object?> get props => [accountName, accountNumber, bankCode, bankName];
}
