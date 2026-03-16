import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

/// Authentication BLoC — handles login, register, profile, and PIN management.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repo = AuthRepository();

  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>(_onLoginRequested);
    on<AuthSignUpRequested>(_onSignUpRequested);
    on<AuthLogoutRequested>(_onLogoutRequested);
    on<AuthCheckStatus>(_onCheckStatus);
    on<AuthSendVerificationEmail>(_onSendVerificationEmail);
    on<AuthVerifyEmailOtp>(_onVerifyEmailOtp);
    on<AuthFetchProfile>(_onFetchProfile);
    on<AuthUpdateProfile>(_onUpdateProfile);
    on<AuthChangePin>(_onChangePin);
    on<AuthSetTransactionPin>(_onSetTransactionPin);
    on<AuthChangeTransactionPin>(_onChangeTransactionPin);
    on<AuthRequestPinReset>(_onRequestPinReset);
    on<AuthResetPin>(_onResetPin);
  }

  Future<void> _onLoginRequested(
    AuthLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await _repo.login(email: event.email, pin: event.pin);
      if (result.isSuccess && result.data != null) {
        final user = result.data!;
        if (user.onboardingState == 'EMAIL_UNVERIFIED') {
          emit(AuthEmailUnverified(email: user.email));
        } else {
          emit(AuthAuthenticated(user: user));
        }
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onSignUpRequested(
    AuthSignUpRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await _repo.register(
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
        pin: event.pin,
        phone: event.phone,
        platform: event.platform,
      );
      if (result.isSuccess && result.data != null) {
        final user = result.data!;
        if (user.onboardingState == 'EMAIL_UNVERIFIED') {
          emit(AuthEmailUnverified(email: user.email));
        } else {
          emit(AuthAuthenticated(user: user));
        }
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onLogoutRequested(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    await _repo.logout();
    emit(AuthUnauthenticated());
  }

  Future<void> _onCheckStatus(
    AuthCheckStatus event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final hasToken = await _repo.hasValidToken();
      if (hasToken) {
        // Fetch the real user profile
        final result = await _repo.getCurrentUser();
        if (result.isSuccess && result.data != null) {
          final user = result.data!;
          if (user.onboardingState == 'EMAIL_UNVERIFIED') {
            emit(AuthEmailUnverified(email: user.email));
          } else {
            emit(AuthAuthenticated(user: user));
          }
        } else {
          emit(AuthUnauthenticated());
        }
      } else {
        emit(AuthUnauthenticated());
      }
    } catch (e) {
      emit(AuthUnauthenticated());
    }
  }

  Future<void> _onSendVerificationEmail(
    AuthSendVerificationEmail event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      await _repo.sendVerificationEmail(event.email);
      emit(AuthEmailUnverified(email: event.email));
    } catch (e) {
      emit(AuthEmailUnverified(email: event.email));
    }
  }

  Future<void> _onVerifyEmailOtp(
    AuthVerifyEmailOtp event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await _repo.verifyEmailOtp(
        email: event.email,
        otp: event.otp,
      );
      if (result.isSuccess) {
        // Fetch full profile now that email is verified
        final profileResult = await _repo.getCurrentUser();
        if (profileResult.isSuccess && profileResult.data != null) {
          emit(AuthAuthenticated(user: profileResult.data!));
        } else {
          emit(
            const AuthActionSuccess(message: 'Email verified successfully!'),
          );
        }
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onFetchProfile(
    AuthFetchProfile event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final result = await _repo.getCurrentUser();
      if (result.isSuccess && result.data != null) {
        emit(AuthAuthenticated(user: result.data!));
      }
    } catch (_) {}
  }

  Future<void> _onUpdateProfile(
    AuthUpdateProfile event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await _repo.updateProfile(event.updates);
      if (result.isSuccess) {
        // Re-fetch profile to get updated data
        add(AuthFetchProfile());
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onChangePin(
    AuthChangePin event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await _repo.changePin(
        oldPin: event.oldPin,
        newPin: event.newPin,
        confirmPin: event.confirmPin,
      );
      if (result.isSuccess) {
        emit(const AuthActionSuccess(message: 'PIN changed successfully'));
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onSetTransactionPin(
    AuthSetTransactionPin event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await _repo.setTransactionPin(
        newPin: event.newPin,
        confirmPin: event.confirmPin,
      );
      if (result.isSuccess) {
        emit(
          const AuthActionSuccess(message: 'Transaction PIN set successfully'),
        );
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onChangeTransactionPin(
    AuthChangeTransactionPin event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await _repo.changeTransactionPin(
        oldPin: event.oldPin,
        newPin: event.newPin,
        confirmPin: event.confirmPin,
      );
      if (result.isSuccess) {
        emit(
          const AuthActionSuccess(
            message: 'Transaction PIN changed successfully',
          ),
        );
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onRequestPinReset(
    AuthRequestPinReset event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await _repo.requestPinReset(event.email);
      if (result.isSuccess) {
        emit(const AuthActionSuccess(message: 'PIN reset email sent'));
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onResetPin(AuthResetPin event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final result = await _repo.resetPin(
        token: event.token,
        pin: event.pin,
        confirmPin: event.confirmPin,
      );
      if (result.isSuccess) {
        emit(const AuthActionSuccess(message: 'PIN reset successfully'));
      } else {
        emit(AuthError(message: result.message));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }
}
