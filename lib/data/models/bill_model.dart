import 'package:equatable/equatable.dart';

/// Bill payment response model.
class BillPaymentResult extends Equatable {
  final String? reference;
  final String? status;
  final String? message;
  final Map<String, dynamic>? data;

  const BillPaymentResult({
    this.reference,
    this.status,
    this.message,
    this.data,
  });

  factory BillPaymentResult.fromJson(Map<String, dynamic> json) {
    return BillPaymentResult(
      reference: json['reference'],
      status: json['status'],
      message: json['message'],
      data: json,
    );
  }

  @override
  List<Object?> get props => [reference, status];
}

/// Bill history item model.
class BillHistoryModel extends Equatable {
  final String id;
  final String type; // AIRTIME, MOBILEDATA, CABLEBILLS, UTILITYBILLS
  final String status; // PENDING, SUCCESS, FAILED
  final double amount;
  final String? billerName;
  final String? billerCode;
  final String? customer;
  final String? reference;
  final DateTime? createdAt;

  const BillHistoryModel({
    required this.id,
    required this.type,
    required this.status,
    required this.amount,
    this.billerName,
    this.billerCode,
    this.customer,
    this.reference,
    this.createdAt,
  });

  factory BillHistoryModel.fromJson(Map<String, dynamic> json) {
    return BillHistoryModel(
      id: json['id'] ?? '',
      type: json['type'] ?? '',
      status: json['status'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),
      billerName: json['billerName'],
      billerCode: json['billerCode'],
      customer: json['customer'],
      reference: json['reference'],
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'])
          : null,
    );
  }

  @override
  List<Object?> get props => [id, type, status, amount];
}

/// Biller item model (data plans, cable packages, etc).
class BillerItemModel extends Equatable {
  final String? id;
  final String name;
  final String? code;
  final double? amount;
  final String? billerCode;

  const BillerItemModel({
    this.id,
    required this.name,
    this.code,
    this.amount,
    this.billerCode,
  });

  factory BillerItemModel.fromJson(Map<String, dynamic> json) {
    return BillerItemModel(
      id: json['id']?.toString(),
      name: json['name'] ?? json['biller_name'] ?? '',
      code: json['code'] ?? json['item_code'],
      amount: json['amount'] != null ? (json['amount']).toDouble() : null,
      billerCode: json['billerCode'] ?? json['biller_code'],
    );
  }

  @override
  List<Object?> get props => [id, name, code, amount];
}

/// Payment method model.
class PaymentMethodModel extends Equatable {
  final String id;
  final String type;
  final String? last4;
  final String? bankName;
  final String? accountNumber;
  final bool isDefault;

  const PaymentMethodModel({
    required this.id,
    required this.type,
    this.last4,
    this.bankName,
    this.accountNumber,
    required this.isDefault,
  });

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) {
    return PaymentMethodModel(
      id: json['id'] ?? '',
      type: json['type'] ?? '',
      last4: json['last4'],
      bankName: json['bankName'],
      accountNumber: json['accountNumber'],
      isDefault: json['isDefault'] ?? false,
    );
  }

  @override
  List<Object?> get props => [id, type, isDefault];
}

/// Beneficiary model.
class BeneficiaryModel extends Equatable {
  final String id;
  final String name;
  final String? type;
  final String? accountNumber;
  final String? bankName;
  final String? bankCode;
  final String? walletAddress;

  const BeneficiaryModel({
    required this.id,
    required this.name,
    this.type,
    this.accountNumber,
    this.bankName,
    this.bankCode,
    this.walletAddress,
  });

  factory BeneficiaryModel.fromJson(Map<String, dynamic> json) {
    return BeneficiaryModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      type: json['type'],
      accountNumber: json['accountNumber'],
      bankName: json['bankName'],
      bankCode: json['bankCode'],
      walletAddress: json['walletAddress'],
    );
  }

  @override
  List<Object?> get props => [id, name, type];
}
