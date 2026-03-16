import 'package:equatable/equatable.dart';

/// Authentication events.
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

/// Login with email and PIN (API uses pin, not password).
class AuthLoginRequested extends AuthEvent {
  final String email;
  final String pin;

  const AuthLoginRequested({required this.email, required this.pin});

  @override
  List<Object?> get props => [email, pin];
}

/// Register a new user.
class AuthSignUpRequested extends AuthEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String pin;
  final String phone;
  final String? platform;

  const AuthSignUpRequested({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.pin,
    required this.phone,
    this.platform,
  });

  @override
  List<Object?> get props => [firstName, lastName, email, pin, phone];
}

class AuthLogoutRequested extends AuthEvent {}

class AuthCheckStatus extends AuthEvent {}

/// Resend the email verification OTP.
class AuthSendVerificationEmail extends AuthEvent {
  final String email;

  const AuthSendVerificationEmail({required this.email});

  @override
  List<Object?> get props => [email];
}

/// Submit OTP code to verify email.
class AuthVerifyEmailOtp extends AuthEvent {
  final String email;
  final String otp;
  final String pin;
  final String confirmPin;

  const AuthVerifyEmailOtp({
    required this.email,
    required this.otp,
    required this.pin,
    required this.confirmPin,
  });

  @override
  List<Object?> get props => [email, otp, pin, confirmPin];
}

/// Fetch current user profile.
class AuthFetchProfile extends AuthEvent {}

/// Update user profile.
class AuthUpdateProfile extends AuthEvent {
  final Map<String, dynamic> updates;

  const AuthUpdateProfile({required this.updates});

  @override
  List<Object?> get props => [updates];
}

/// Change login PIN.
class AuthChangePin extends AuthEvent {
  final String oldPin;
  final String newPin;
  final String confirmPin;

  const AuthChangePin({
    required this.oldPin,
    required this.newPin,
    required this.confirmPin,
  });

  @override
  List<Object?> get props => [oldPin, newPin, confirmPin];
}

/// Set transaction PIN.
class AuthSetTransactionPin extends AuthEvent {
  final String newPin;
  final String confirmPin;

  const AuthSetTransactionPin({required this.newPin, required this.confirmPin});

  @override
  List<Object?> get props => [newPin, confirmPin];
}

/// Change transaction PIN.
class AuthChangeTransactionPin extends AuthEvent {
  final String oldPin;
  final String newPin;
  final String confirmPin;

  const AuthChangeTransactionPin({
    required this.oldPin,
    required this.newPin,
    required this.confirmPin,
  });

  @override
  List<Object?> get props => [oldPin, newPin, confirmPin];
}

/// Request PIN reset email.
class AuthRequestPinReset extends AuthEvent {
  final String email;

  const AuthRequestPinReset({required this.email});

  @override
  List<Object?> get props => [email];
}

/// Reset PIN with token.
class AuthResetPin extends AuthEvent {
  final String token;
  final String pin;
  final String confirmPin;

  const AuthResetPin({
    required this.token,
    required this.pin,
    required this.confirmPin,
  });

  @override
  List<Object?> get props => [token, pin, confirmPin];
}
