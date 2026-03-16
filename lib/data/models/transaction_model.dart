import 'package:equatable/equatable.dart';

/// Transaction model matching TransactionDataDto.
class TransactionModel extends Equatable {
  final String id;
  final String userId;
  final double amount;
  final String type; // DEBIT, CREDIT, PEER-TRANSFER
  final String status; // PENDING, SUCCESS, FAILED, COMPLETED
  final String reference;
  final String? currency;
  final String narration;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const TransactionModel({
    required this.id,
    required this.userId,
    required this.amount,
    required this.type,
    required this.status,
    required this.reference,
    this.currency,
    required this.narration,
    this.createdAt,
    this.updatedAt,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'] ?? '',
      userId: json['userId'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),
      type: json['type'] ?? '',
      status: json['status'] ?? '',
      reference: json['reference'] ?? '',
      currency: json['currency'],
      narration: json['narration'] ?? '',
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.tryParse(json['updatedAt'])
          : null,
    );
  }

  @override
  List<Object?> get props => [id, amount, type, status, reference];
}

/// Paginated transactions response.
class PaginatedTransactions extends Equatable {
  final List<TransactionModel> transactions;
  final PaginationMeta pagination;

  const PaginatedTransactions({
    required this.transactions,
    required this.pagination,
  });

  factory PaginatedTransactions.fromJson(Map<String, dynamic> json) {
    return PaginatedTransactions(
      transactions:
          (json['transactions'] as List<dynamic>?)
              ?.map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pagination: PaginationMeta.fromJson(json['pagination'] ?? {}),
    );
  }

  @override
  List<Object?> get props => [transactions, pagination];
}

/// Pagination metadata matching PaginationMetaDto.
class PaginationMeta extends Equatable {
  final int page;
  final int limit;
  final int total;
  final int totalPages;
  final bool hasNextPage;
  final bool hasPreviousPage;

  const PaginationMeta({
    required this.page,
    required this.limit,
    required this.total,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPreviousPage,
  });

  factory PaginationMeta.fromJson(Map<String, dynamic> json) {
    return PaginationMeta(
      page: json['page'] ?? 1,
      limit: json['limit'] ?? 10,
      total: json['total'] ?? 0,
      totalPages: json['totalPages'] ?? 0,
      hasNextPage: json['hasNextPage'] ?? false,
      hasPreviousPage: json['hasPreviousPage'] ?? false,
    );
  }

  @override
  List<Object?> get props => [page, limit, total, totalPages];
}
