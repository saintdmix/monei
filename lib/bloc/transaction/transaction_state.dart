import 'package:equatable/equatable.dart';
import '../../data/models/transaction_model.dart';

/// Transaction states.
abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object?> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionListLoaded extends TransactionState {
  final List<TransactionModel> transactions;
  final PaginationMeta pagination;

  const TransactionListLoaded({
    required this.transactions,
    required this.pagination,
  });

  @override
  List<Object?> get props => [transactions, pagination];
}

class TransactionDetailLoaded extends TransactionState {
  final TransactionModel transaction;

  const TransactionDetailLoaded({required this.transaction});

  @override
  List<Object?> get props => [transaction];
}

class TransactionError extends TransactionState {
  final String message;

  const TransactionError({required this.message});

  @override
  List<Object?> get props => [message];
}
