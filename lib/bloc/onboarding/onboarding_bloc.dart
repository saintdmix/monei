import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/auth_repository.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

/// Onboarding BLoC — handles the 5-step registration flow.
///
/// Steps:
/// 1. Request email signup → sends OTP
/// 2. Verify email OTP
/// 3. Complete profile (firstName, lastName)
/// 4. Send phone OTP
/// 5. Verify phone OTP
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final AuthRepository _repo = AuthRepository();

  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingCheckStatus>(_onCheckStatus);
    on<OnboardingRequestEmailSignup>(_onRequestEmailSignup);
    on<OnboardingVerifyEmailOtp>(_onVerifyEmailOtp);
    on<OnboardingCompleteProfile>(_onCompleteProfile);
    on<OnboardingSendPhoneOtp>(_onSendPhoneOtp);
    on<OnboardingVerifyPhoneOtp>(_onVerifyPhoneOtp);
    on<OnboardingSetTransactionPin>(_onSetTransactionPin);
  }

  Future<void> _onCheckStatus(
    OnboardingCheckStatus event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());
    try {
      final result = await _repo.getOnboardingStatus();
      if (result.isSuccess && result.data != null) {
        final data = result.data!;
        // Determine current step from status
        int step = 1;
        final String? nextStep = data['nextStep'];
        
        if (nextStep == 'TRANSACTION_PIN_SET' || nextStep == 'SET_TRANSACTION_PIN') {
          step = 6;
        } else if (nextStep == 'PROFILE_COMPLETE' || nextStep == 'COMPLETE_PROFILE') {
          step = 5;
        } else if (nextStep == 'PHONE_SETUP' || nextStep == 'PHONE_VERIFICATION') {
          step = 3;
        } else {
          if (data['emailVerified'] == true && data['hasLoginPin'] == true) {
            step = 3; // Phone Setup
          }
          if (data['phoneVerified'] == true) {
            step = 5; // To Profile Setup
          }
          if (data['hasProfile'] == true) {
            step = 6; // To Transaction PIN
          }
        }
        if (data['hasTransactionPin'] == true || data['percentComplete'] == 100) {
          emit(OnboardingComplete());
        } else {
          emit(OnboardingStepState(currentStep: step, status: data));
        }
      } else {
        emit(const OnboardingStepState(currentStep: 1));
      }
    } catch (e) {
      emit(const OnboardingStepState(currentStep: 1));
    }
  }

  Future<void> _onRequestEmailSignup(
    OnboardingRequestEmailSignup event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());
    try {
      final result = await _repo.requestEmailSignup(event.email);
      if (result.isSuccess) {
        emit(OnboardingStepSuccess(completedStep: 1, message: result.message));
      } else {
        emit(OnboardingError(message: result.message));
      }
    } catch (e) {
      emit(OnboardingError(message: e.toString()));
    }
  }

  Future<void> _onVerifyEmailOtp(
    OnboardingVerifyEmailOtp event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());
    try {
      final result = await _repo.verifyEmailOtp(
        email: event.email,
        otp: event.otp,
        pin: event.pin,
        confirmPin: event.confirmPin,
      );
      if (result.isSuccess) {
        emit(OnboardingStepSuccess(completedStep: 2, message: result.message));
      } else {
        emit(OnboardingError(message: result.message));
      }
    } catch (e) {
      emit(OnboardingError(message: e.toString()));
    }
  }

  Future<void> _onCompleteProfile(
    OnboardingCompleteProfile event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());
    try {
      final result = await _repo.completeProfile(
        firstName: event.firstName,
        lastName: event.lastName,
      );
      if (result.isSuccess) {
        emit(OnboardingStepSuccess(completedStep: 5, message: result.message));
      } else {
        emit(OnboardingError(message: result.message));
      }
    } catch (e) {
      emit(OnboardingError(message: e.toString()));
    }
  }

  Future<void> _onSendPhoneOtp(
    OnboardingSendPhoneOtp event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());
    try {
      final result = await _repo.sendPhoneOtp(event.phone);
      if (result.isSuccess) {
        emit(OnboardingStepSuccess(completedStep: 3, message: result.message));
      } else {
        emit(OnboardingError(message: result.message));
      }
    } catch (e) {
      emit(OnboardingError(message: e.toString()));
    }
  }

  Future<void> _onVerifyPhoneOtp(
    OnboardingVerifyPhoneOtp event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());
    try {
      final result = await _repo.verifyPhoneOtp(
        phone: event.phone,
        otp: event.otp,
      );
      if (result.isSuccess) {
        emit(OnboardingStepSuccess(completedStep: 4, message: result.message));
      } else {
        emit(OnboardingError(message: result.message));
      }
    } catch (e) {
      emit(OnboardingError(message: e.toString()));
    }
  }

  Future<void> _onSetTransactionPin(
    OnboardingSetTransactionPin event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());
    try {
      final result = await _repo.setTransactionPin(
        newPin: event.newPin,
        confirmPin: event.confirmPin,
      );
      if (result.isSuccess) {
        emit(OnboardingComplete());
      } else {
        emit(OnboardingError(message: result.message));
      }
    } catch (e) {
      emit(OnboardingError(message: e.toString()));
    }
  }
}
