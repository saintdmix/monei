import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/wallet_repository.dart';
import 'wallet_event.dart';
import 'wallet_state.dart';

/// Wallet BLoC — manages Naira wallet, virtual account, deposits, withdrawals, P2P.
class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final WalletRepository _repo = WalletRepository();

  WalletBloc() : super(WalletInitial()) {
    on<WalletFetchRequested>(_onFetchWallet);
    on<WalletFetchBanks>(_onFetchBanks);
    on<WalletVerifyBankAccount>(_onVerifyBankAccount);
    on<WalletCreateVirtualAccount>(_onCreateVirtualAccount);
    on<WalletFundRequested>(_onFundWallet);
    on<WalletWithdrawRequested>(_onWithdraw);
    on<WalletPeerTransfer>(_onPeerTransfer);
  }

  Future<void> _onFetchWallet(
    WalletFetchRequested event,
    Emitter<WalletState> emit,
  ) async {
    emit(WalletLoading());
    try {
      final result = await _repo.getWallet();
      if (result.isSuccess && result.data != null) {
        emit(WalletLoaded(wallet: result.data!));
      } else {
        emit(WalletError(message: result.message));
      }
    } catch (e) {
      emit(WalletError(message: e.toString()));
    }
  }

  Future<void> _onFetchBanks(
    WalletFetchBanks event,
    Emitter<WalletState> emit,
  ) async {
    emit(WalletLoading());
    try {
      final result = await _repo.getBanks();
      if (result.isSuccess && result.data != null) {
        emit(WalletBanksLoaded(banks: result.data!));
      } else {
        emit(WalletError(message: result.message));
      }
    } catch (e) {
      emit(WalletError(message: e.toString()));
    }
  }

  Future<void> _onVerifyBankAccount(
    WalletVerifyBankAccount event,
    Emitter<WalletState> emit,
  ) async {
    emit(WalletLoading());
    try {
      final result = await _repo.verifyBankAccount(
        accountNumber: event.accountNumber,
        bank: event.bank,
      );
      if (result.isSuccess && result.data != null) {
        emit(WalletBankAccountVerified(bankAccount: result.data!));
      } else {
        emit(WalletError(message: result.message));
      }
    } catch (e) {
      emit(WalletError(message: e.toString()));
    }
  }

  Future<void> _onCreateVirtualAccount(
    WalletCreateVirtualAccount event,
    Emitter<WalletState> emit,
  ) async {
    emit(WalletLoading());
    try {
      final result = await _repo.createVirtualAccount(nin: event.nin);
      if (result.isSuccess) {
        emit(WalletActionSuccess(message: result.message, data: result.data));
      } else {
        emit(WalletError(message: result.message));
      }
    } catch (e) {
      emit(WalletError(message: e.toString()));
    }
  }

  Future<void> _onFundWallet(
    WalletFundRequested event,
    Emitter<WalletState> emit,
  ) async {
    emit(WalletLoading());
    try {
      final result = await _repo.fundWallet(
        amount: event.amount,
        email: event.email,
        phoneNumber: event.phoneNumber,
        name: event.name,
      );
      if (result.isSuccess) {
        emit(
          WalletActionSuccess(
            message: 'Payment link generated',
            data: result.data,
          ),
        );
      } else {
        emit(WalletError(message: result.message));
      }
    } catch (e) {
      emit(WalletError(message: e.toString()));
    }
  }

  Future<void> _onWithdraw(
    WalletWithdrawRequested event,
    Emitter<WalletState> emit,
  ) async {
    emit(WalletLoading());
    try {
      final result = await _repo.withdraw(
        amount: event.amount,
        bank: event.bank,
        accountNumber: event.accountNumber,
        transactionPin: event.transactionPin,
        narration: event.narration,
      );
      if (result.isSuccess) {
        emit(WalletActionSuccess(message: result.message));
      } else {
        emit(WalletError(message: result.message));
      }
    } catch (e) {
      emit(WalletError(message: e.toString()));
    }
  }

  Future<void> _onPeerTransfer(
    WalletPeerTransfer event,
    Emitter<WalletState> emit,
  ) async {
    emit(WalletLoading());
    try {
      final result = await _repo.peerTransfer(
        receiver: event.receiver,
        amount: event.amount,
        transactionPin: event.transactionPin,
        currency: event.currency,
      );
      if (result.isSuccess) {
        emit(WalletActionSuccess(message: result.message));
      } else {
        emit(WalletError(message: result.message));
      }
    } catch (e) {
      emit(WalletError(message: e.toString()));
    }
  }
}
