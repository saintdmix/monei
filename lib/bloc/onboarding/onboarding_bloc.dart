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
        
        // Check if fully complete first
        if (data['hasTransactionPin'] == true || data['percentComplete'] == 100) {
          emit(OnboardingComplete());
          return;
        }
        
        // Determine current step from nextStep field
        int step = 1;
        final String? nextStep = data['nextStep'];
        
        if (nextStep == 'PHONE_PENDING' || nextStep == 'PHONE_SETUP' || nextStep == 'PHONE_VERIFICATION') {
          step = 3; // Phone Setup
        } else if (nextStep == 'PROFILE_COMPLETE' || nextStep == 'COMPLETE_PROFILE') {
          step = 5; // Complete Profile
        } else if (nextStep == 'TRANSACTION_PIN_SET' || nextStep == 'SET_TRANSACTION_PIN' || nextStep == 'TRANSACTION_PIN_PENDING') {
          step = 6; // Transaction PIN
        } else {
          // Fallback logic if nextStep is not recognized
          if (data['emailVerified'] != true || data['hasLoginPin'] != true) {
            step = 1;
          } else if (data['hasProfile'] != true) {
            step = 5;
          } else if (data['phoneVerified'] != true) {
            step = 3;
          } else {
            step = 6;
          }
        }
        
        emit(OnboardingStepState(currentStep: step, status: data));
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
        // Check the nextStep from the response to determine where to go
        final nextStep = result.data?['nextStep'];
        int completedStep = 4; // Default: phone verified
        
        if (nextStep == 'SET_TRANSACTION_PIN' || nextStep == 'TRANSACTION_PIN_PENDING') {
          completedStep = 4; // Skip profile, go to transaction PIN
        } else if (nextStep == 'COMPLETE_PROFILE' || nextStep == 'PROFILE_COMPLETE') {
          completedStep = 4; // Go to profile completion
        }
        
        emit(OnboardingStepSuccess(completedStep: completedStep, message: result.message));
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
