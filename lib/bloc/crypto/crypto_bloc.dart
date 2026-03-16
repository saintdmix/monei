import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/crypto_repository.dart';
import 'crypto_event.dart';
import 'crypto_state.dart';

/// Crypto BLoC — manages EVM, Solana portfolios, transfers, swaps, and offramp.
class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  final CryptoRepository _repo = CryptoRepository();

  CryptoBloc() : super(CryptoInitial()) {
    on<CryptoFetchEvmNetworks>(_onFetchEvmNetworks);
    on<CryptoFetchEvmPortfolio>(_onFetchEvmPortfolio);
    on<CryptoSendEvmNativeToken>(_onSendEvmNativeToken);
    on<CryptoSendEvmToken>(_onSendEvmToken);
    on<CryptoFetchSolanaPortfolio>(_onFetchSolanaPortfolio);
    on<CryptoFetchSolanaAddress>(_onFetchSolanaAddress);
    on<CryptoTransferSol>(_onTransferSol);
    on<CryptoTransferSplToken>(_onTransferSplToken);
    on<CryptoEvmSwap>(_onEvmSwap);
    on<CryptoSolanaSwap>(_onSolanaSwap);
    on<CryptoInitiateOfframp>(_onInitiateOfframp);
  }

  Future<void> _onFetchEvmNetworks(
    CryptoFetchEvmNetworks event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.getSupportedNetworks();
      if (result.isSuccess && result.data != null) {
        emit(CryptoEvmNetworksLoaded(chains: result.data!));
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onFetchEvmPortfolio(
    CryptoFetchEvmPortfolio event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.getEvmPortfolio(event.chainId);
      if (result.isSuccess && result.data != null) {
        emit(CryptoEvmPortfolioLoaded(portfolio: result.data!));
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onSendEvmNativeToken(
    CryptoSendEvmNativeToken event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.sendEvmNativeToken(
        to: event.to,
        amount: event.amount,
        chainId: event.chainId,
      );
      if (result.isSuccess) {
        emit(
          CryptoActionSuccess(message: 'Transaction sent', txHash: result.data),
        );
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onSendEvmToken(
    CryptoSendEvmToken event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.sendEvmToken(
        to: event.to,
        tokenAddress: event.tokenAddress,
        amount: event.amount,
        chainId: event.chainId,
      );
      if (result.isSuccess) {
        emit(CryptoActionSuccess(message: 'Token sent', txHash: result.data));
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onFetchSolanaPortfolio(
    CryptoFetchSolanaPortfolio event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.getSolanaPortfolio(network: event.network);
      if (result.isSuccess && result.data != null) {
        emit(CryptoSolanaPortfolioLoaded(portfolio: result.data!));
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onFetchSolanaAddress(
    CryptoFetchSolanaAddress event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.getSolanaAddress();
      if (result.isSuccess && result.data != null) {
        emit(CryptoSolanaAddressLoaded(address: result.data!));
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onTransferSol(
    CryptoTransferSol event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.transferSol(
        to: event.to,
        amount: event.amount,
        network: event.network,
      );
      if (result.isSuccess) {
        emit(
          CryptoActionSuccess(message: 'SOL transferred', txHash: result.data),
        );
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onTransferSplToken(
    CryptoTransferSplToken event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.transferSplToken(
        to: event.to,
        tokenMintAddress: event.tokenMintAddress,
        amount: event.amount,
        network: event.network,
      );
      if (result.isSuccess) {
        emit(
          CryptoActionSuccess(
            message: 'Token transferred',
            txHash: result.data,
          ),
        );
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onEvmSwap(
    CryptoEvmSwap event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      dynamic result;
      switch (event.swapType) {
        case 'native-to-token':
          result = await _repo.evmSwapNativeToToken(event.body);
          break;
        case 'token-to-token':
          result = await _repo.evmSwapTokenToToken(event.body);
          break;
        case 'token-to-native':
          result = await _repo.evmSwapTokenToNative(event.body);
          break;
        default:
          emit(const CryptoError(message: 'Unknown swap type'));
          return;
      }
      if (result.isSuccess) {
        emit(
          CryptoActionSuccess(message: 'Swap executed', txHash: result.data),
        );
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onSolanaSwap(
    CryptoSolanaSwap event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      dynamic result;
      switch (event.swapType) {
        case 'sol-to-token':
          result = await _repo.solSwapSolToToken(event.body);
          break;
        case 'token-to-token':
          result = await _repo.solSwapTokenToToken(event.body);
          break;
        case 'token-to-sol':
          result = await _repo.solSwapTokenToSol(event.body);
          break;
        default:
          emit(const CryptoError(message: 'Unknown swap type'));
          return;
      }
      if (result.isSuccess) {
        emit(CryptoActionSuccess(message: 'Swap executed', data: result.data));
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }

  Future<void> _onInitiateOfframp(
    CryptoInitiateOfframp event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    try {
      final result = await _repo.initiateOfframp(event.body);
      if (result.isSuccess) {
        emit(
          CryptoActionSuccess(message: 'Offramp initiated', data: result.data),
        );
      } else {
        emit(CryptoError(message: result.message));
      }
    } catch (e) {
      emit(CryptoError(message: e.toString()));
    }
  }
}
