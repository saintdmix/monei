import 'package:equatable/equatable.dart';

/// Transaction events.
abstract class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object?> get props => [];
}

class TransactionFetchAll extends TransactionEvent {
  final int page;
  final int limit;
  final String? status;
  final String? type;

  const TransactionFetchAll({
    this.page = 1,
    this.limit = 20,
    this.status,
    this.type,
  });

  @override
  List<Object?> get props => [page, limit, status, type];
}

class TransactionFetchById extends TransactionEvent {
  final String id;

  const TransactionFetchById({required this.id});

  @override
  List<Object?> get props => [id];
}

class TransactionFetchByReference extends TransactionEvent {
  final String reference;

  const TransactionFetchByReference({required this.reference});

  @override
  List<Object?> get props => [reference];
}
