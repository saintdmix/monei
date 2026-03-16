import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/transaction_repository.dart';
import 'transaction_event.dart';
import 'transaction_state.dart';

/// Transaction BLoC — lists, filters, and fetches transaction details.
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionRepository _repo = TransactionRepository();

  TransactionBloc() : super(TransactionInitial()) {
    on<TransactionFetchAll>(_onFetchAll);
    on<TransactionFetchById>(_onFetchById);
    on<TransactionFetchByReference>(_onFetchByReference);
  }

  Future<void> _onFetchAll(
    TransactionFetchAll event,
    Emitter<TransactionState> emit,
  ) async {
    emit(TransactionLoading());
    try {
      final result = await _repo.getUserTransactions(
        page: event.page,
        limit: event.limit,
        status: event.status,
        type: event.type,
      );
      if (result.isSuccess && result.data != null) {
        emit(
          TransactionListLoaded(
            transactions: result.data!.transactions,
            pagination: result.data!.pagination,
          ),
        );
      } else {
        emit(TransactionError(message: result.message));
      }
    } catch (e) {
      emit(TransactionError(message: e.toString()));
    }
  }

  Future<void> _onFetchById(
    TransactionFetchById event,
    Emitter<TransactionState> emit,
  ) async {
    emit(TransactionLoading());
    try {
      final result = await _repo.getTransactionById(event.id);
      if (result.isSuccess && result.data != null) {
        emit(TransactionDetailLoaded(transaction: result.data!));
      } else {
        emit(TransactionError(message: result.message));
      }
    } catch (e) {
      emit(TransactionError(message: e.toString()));
    }
  }

  Future<void> _onFetchByReference(
    TransactionFetchByReference event,
    Emitter<TransactionState> emit,
  ) async {
    emit(TransactionLoading());
    try {
      final result = await _repo.getTransactionByReference(event.reference);
      if (result.isSuccess && result.data != null) {
        emit(TransactionDetailLoaded(transaction: result.data!));
      } else {
        emit(TransactionError(message: result.message));
      }
    } catch (e) {
      emit(TransactionError(message: e.toString()));
    }
  }
}
