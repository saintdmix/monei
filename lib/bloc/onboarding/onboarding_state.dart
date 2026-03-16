import 'package:equatable/equatable.dart';

/// Onboarding states.
abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object?> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoading extends OnboardingState {}

/// Current step in the onboarding flow.
class OnboardingStepState extends OnboardingState {
  final int currentStep; // 1-5
  final String? email;
  final String? phone;
  final Map<String, dynamic>? status;

  const OnboardingStepState({
    required this.currentStep,
    this.email,
    this.phone,
    this.status,
  });

  @override
  List<Object?> get props => [currentStep, email, phone, status];
}

class OnboardingStepSuccess extends OnboardingState {
  final int completedStep;
  final String message;

  const OnboardingStepSuccess({
    required this.completedStep,
    required this.message,
  });

  @override
  List<Object?> get props => [completedStep, message];
}

class OnboardingComplete extends OnboardingState {}

class OnboardingError extends OnboardingState {
  final String message;

  const OnboardingError({required this.message});

  @override
  List<Object?> get props => [message];
}
