import 'package:equatable/equatable.dart';
import '../../data/models/bill_model.dart';

/// Bills payment states.
abstract class BillsState extends Equatable {
  const BillsState();

  @override
  List<Object?> get props => [];
}

class BillsInitial extends BillsState {}

class BillsLoading extends BillsState {}

class BillsHistoryLoaded extends BillsState {
  final List<BillHistoryModel> history;

  const BillsHistoryLoaded({required this.history});

  @override
  List<Object?> get props => [history];
}

class BillsBillersLoaded extends BillsState {
  final List<BillerItemModel> billers;

  const BillsBillersLoaded({required this.billers});

  @override
  List<Object?> get props => [billers];
}

class BillsBillerItemsLoaded extends BillsState {
  final List<BillerItemModel> items;

  const BillsBillerItemsLoaded({required this.items});

  @override
  List<Object?> get props => [items];
}

class BillsCustomerValidated extends BillsState {
  final Map<String, dynamic> customerData;

  const BillsCustomerValidated({required this.customerData});

  @override
  List<Object?> get props => [customerData];
}

class BillsPaymentSuccess extends BillsState {
  final String message;
  final BillPaymentResult? result;

  const BillsPaymentSuccess({required this.message, this.result});

  @override
  List<Object?> get props => [message, result];
}

class BillsError extends BillsState {
  final String message;

  const BillsError({required this.message});

  @override
  List<Object?> get props => [message];
}
