import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/bills_repository.dart';
import 'bills_event.dart';
import 'bills_state.dart';

/// Bills BLoC — airtime, data, electricity, cable TV, and bill history.
class BillsBloc extends Bloc<BillsEvent, BillsState> {
  final BillsRepository _repo = BillsRepository();

  BillsBloc() : super(BillsInitial()) {
    on<BillsFetchHistory>(_onFetchHistory);
    on<BillsFetchElectricityBillers>(_onFetchElectricityBillers);
    on<BillsFetchBillerItems>(_onFetchBillerItems);
    on<BillsValidateCustomer>(_onValidateCustomer);
    on<BillsBuyAirtime>(_onBuyAirtime);
    on<BillsBuyData>(_onBuyData);
    on<BillsPayElectricity>(_onPayElectricity);
    on<BillsSubscribeCableTv>(_onSubscribeCableTv);
  }

  Future<void> _onFetchHistory(
    BillsFetchHistory event,
    Emitter<BillsState> emit,
  ) async {
    emit(BillsLoading());
    try {
      final result = await _repo.getBillHistory();
      if (result.isSuccess && result.data != null) {
        emit(BillsHistoryLoaded(history: result.data!));
      } else {
        emit(BillsError(message: result.message));
      }
    } catch (e) {
      emit(BillsError(message: e.toString()));
    }
  }

  Future<void> _onFetchElectricityBillers(
    BillsFetchElectricityBillers event,
    Emitter<BillsState> emit,
  ) async {
    emit(BillsLoading());
    try {
      final result = await _repo.getElectricityBillers();
      if (result.isSuccess && result.data != null) {
        emit(BillsBillersLoaded(billers: result.data!));
      } else {
        emit(BillsError(message: result.message));
      }
    } catch (e) {
      emit(BillsError(message: e.toString()));
    }
  }

  Future<void> _onFetchBillerItems(
    BillsFetchBillerItems event,
    Emitter<BillsState> emit,
  ) async {
    emit(BillsLoading());
    try {
      final result = await _repo.getBillerItems(
        event.category,
        event.billerName,
      );
      if (result.isSuccess && result.data != null) {
        emit(BillsBillerItemsLoaded(items: result.data!));
      } else {
        emit(BillsError(message: result.message));
      }
    } catch (e) {
      emit(BillsError(message: e.toString()));
    }
  }

  Future<void> _onValidateCustomer(
    BillsValidateCustomer event,
    Emitter<BillsState> emit,
  ) async {
    emit(BillsLoading());
    try {
      final result = await _repo.validateCustomer(event.body);
      if (result.isSuccess && result.data != null) {
        emit(BillsCustomerValidated(customerData: result.data!));
      } else {
        emit(BillsError(message: result.message));
      }
    } catch (e) {
      emit(BillsError(message: e.toString()));
    }
  }

  Future<void> _onBuyAirtime(
    BillsBuyAirtime event,
    Emitter<BillsState> emit,
  ) async {
    emit(BillsLoading());
    try {
      final result = await _repo.buyAirtime(
        billerName: event.billerName,
        customer: event.customer,
        amount: event.amount,
        transactionPin: event.transactionPin,
      );
      if (result.isSuccess) {
        emit(BillsPaymentSuccess(message: result.message, result: result.data));
      } else {
        emit(BillsError(message: result.message));
      }
    } catch (e) {
      emit(BillsError(message: e.toString()));
    }
  }

  Future<void> _onBuyData(BillsBuyData event, Emitter<BillsState> emit) async {
    emit(BillsLoading());
    try {
      final result = await _repo.buyMobileData(
        billerName: event.billerName,
        customer: event.customer,
        itemCode: event.itemCode,
        amount: event.amount,
        transactionPin: event.transactionPin,
      );
      if (result.isSuccess) {
        emit(BillsPaymentSuccess(message: result.message, result: result.data));
      } else {
        emit(BillsError(message: result.message));
      }
    } catch (e) {
      emit(BillsError(message: e.toString()));
    }
  }

  Future<void> _onPayElectricity(
    BillsPayElectricity event,
    Emitter<BillsState> emit,
  ) async {
    emit(BillsLoading());
    try {
      final result = await _repo.payElectricity(
        billerName: event.billerName,
        customer: event.customer,
        amount: event.amount,
        billerCode: event.billerCode,
        transactionPin: event.transactionPin,
      );
      if (result.isSuccess) {
        emit(BillsPaymentSuccess(message: result.message, result: result.data));
      } else {
        emit(BillsError(message: result.message));
      }
    } catch (e) {
      emit(BillsError(message: e.toString()));
    }
  }

  Future<void> _onSubscribeCableTv(
    BillsSubscribeCableTv event,
    Emitter<BillsState> emit,
  ) async {
    emit(BillsLoading());
    try {
      final result = await _repo.subscribeCableTv(
        billerName: event.billerName,
        customer: event.customer,
        itemCode: event.itemCode,
        amount: event.amount,
        transactionPin: event.transactionPin,
      );
      if (result.isSuccess) {
        emit(BillsPaymentSuccess(message: result.message, result: result.data));
      } else {
        emit(BillsError(message: result.message));
      }
    } catch (e) {
      emit(BillsError(message: e.toString()));
    }
  }
}
