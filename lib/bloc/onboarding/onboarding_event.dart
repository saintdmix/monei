import 'package:equatable/equatable.dart';

/// Onboarding events for the 5-step flow.
abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object?> get props => [];
}

class OnboardingCheckStatus extends OnboardingEvent {}

/// Step 1: Request email signup.
class OnboardingRequestEmailSignup extends OnboardingEvent {
  final String email;
  const OnboardingRequestEmailSignup({required this.email});

  @override
  List<Object?> get props => [email];
}

/// Step 2: Verify email OTP.
class OnboardingVerifyEmailOtp extends OnboardingEvent {
  final String email;
  final String otp;
  const OnboardingVerifyEmailOtp({required this.email, required this.otp});

  @override
  List<Object?> get props => [email, otp];
}

/// Step 3: Complete profile.
class OnboardingCompleteProfile extends OnboardingEvent {
  final String firstName;
  final String lastName;
  const OnboardingCompleteProfile({
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [firstName, lastName];
}

/// Step 4: Send phone OTP.
class OnboardingSendPhoneOtp extends OnboardingEvent {
  final String phone;
  const OnboardingSendPhoneOtp({required this.phone});

  @override
  List<Object?> get props => [phone];
}

/// Step 5: Verify phone OTP.
class OnboardingVerifyPhoneOtp extends OnboardingEvent {
  final String phone;
  final String otp;
  const OnboardingVerifyPhoneOtp({required this.phone, required this.otp});

  @override
  List<Object?> get props => [phone, otp];
}
