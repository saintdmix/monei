import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import '../../bloc/onboarding/onboarding_bloc.dart';
import '../../bloc/onboarding/onboarding_event.dart';
import '../../bloc/onboarding/onboarding_state.dart';
import '../../components/buttons/gradient_button.dart';
import '../../components/inputs/app_text_field.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';
import '../../core/utils/utils.dart';
import '../chat/chat_screen.dart';

class OnboardingFlowScreen extends StatefulWidget {
  final int startStep;
  final String? initialEmail;
  final String? initialPhone;

  const OnboardingFlowScreen({
    super.key,
    this.startStep = 1,
    this.initialEmail,
    this.initialPhone,
  });

  @override
  State<OnboardingFlowScreen> createState() => _OnboardingFlowScreenState();
}

class _OnboardingFlowScreenState extends State<OnboardingFlowScreen> {
  late int _currentStep;
  String? _email;
  String? _phone;

  @override
  void initState() {
    super.initState();
    _currentStep = widget.startStep;
    _email = widget.initialEmail;
    _phone = widget.initialPhone;

    if (_currentStep == 1) {
      context.read<OnboardingBloc>().add(OnboardingCheckStatus());
    }
  }

  void _nextStep(int step) {
    setState(() => _currentStep = step);
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state is OnboardingError) {
          AppUtils.showSnackBar(context, state.message, isError: true);
        } else if (state is OnboardingComplete) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const ChatScreen()),
          );
        } else if (state is OnboardingStepState) {
          setState(() {
            _currentStep = state.currentStep;
          });
        } else if (state is OnboardingStepSuccess) {
          if (state.completedStep == 1) {
            _nextStep(2);
          } else if (state.completedStep == 2) {
            _nextStep(3);
          } else if (state.completedStep == 3) {
            _nextStep(4);
          } else if (state.completedStep == 4) {
            _nextStep(5);
          } else if (state.completedStep == 5) {
            // In case my complete profile has completedStep == 3 originally,
            // but let's just use OnboardingStepSuccess to check message maybe
            _nextStep(6);
          }
        }
      },
      child: Scaffold(
        backgroundColor: colors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: _currentStep > 2
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: colors.textPrimary,
                  ),
                  onPressed: () => _nextStep(_currentStep - 1),
                )
              : const SizedBox.shrink(),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: _buildBody(),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentStep) {
      case 2:
        return _VerifyEmailOtpView(
          email: _email ?? '',
          onSuccess: () => _nextStep(3),
        );
      case 3:
        return _PhoneSetupView(
          onPhoneSent: (phone) {
            setState(() => _phone = phone);
            _nextStep(4);
          },
        );
      case 4:
        return _VerifyPhoneOtpView(
          phone: _phone ?? '',
          onSuccess: () => _nextStep(5), // To Complete Profile
        );
      case 5:
        return _CompleteProfileView(onSuccess: () => _nextStep(6));
      case 6:
        return _SetTransactionPinView();
      default:
        return const Center(child: CircularProgressIndicator());
    }
  }
}

class _VerifyEmailOtpView extends StatefulWidget {
  final String email;
  final VoidCallback onSuccess;

  const _VerifyEmailOtpView({required this.email, required this.onSuccess});

  @override
  State<_VerifyEmailOtpView> createState() => _VerifyEmailOtpViewState();
}

class _VerifyEmailOtpViewState extends State<_VerifyEmailOtpView> {
  final _otpController = TextEditingController();
  final _pinController = TextEditingController();
  final _confirmPinController = TextEditingController();

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: const Color(0xFF1A1A2E), // Match surfaceElevated
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.withOpacity(0.2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Verify Email', style: AppStyles.h1(context)),
          const SizedBox(height: 8),
          Text(
            'Enter the OTP sent to ${widget.email}',
            style: AppStyles.bodyMedium(context),
          ),
          const SizedBox(height: 32),

          Center(
            child: Pinput(
              controller: _otpController,
              length: 6,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A2E),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF6C63FF)),
                ),
              ),
            ),
          ),

          const SizedBox(height: 48),
          Text('Set Login PIN', style: AppStyles.h2(context)),
          const SizedBox(height: 8),
          Text(
            'Create a 4-digit PIN for your account',
            style: AppStyles.bodySmall(context),
          ),
          const SizedBox(height: 16),

          AppTextField(
            hintText: 'PIN',
            labelText: 'New PIN',
            controller: _pinController,
            obscureText: true,
            keyboardType: TextInputType.number,
            // maxLength: 4,
          ),
          const SizedBox(height: 16),
          AppTextField(
            hintText: 'Confirm PIN',
            labelText: 'Confirm PIN',
            controller: _confirmPinController,
            obscureText: true,
            keyboardType: TextInputType.number,
            // maxLength: 4,
          ),

          const SizedBox(height: 40),
          BlocConsumer<OnboardingBloc, OnboardingState>(
            listener: (context, state) {
              if (state is OnboardingStepSuccess && state.completedStep == 2) {
                widget.onSuccess();
              }
            },
            builder: (context, state) {
              return GradientButton(
                text: 'Verify & Continue',
                isLoading: state is OnboardingLoading,
                onPressed: () {
                  if (_pinController.text != _confirmPinController.text) {
                    AppUtils.showSnackBar(
                      context,
                      'PINs do not match',
                      isError: true,
                    );
                    return;
                  }
                  context.read<OnboardingBloc>().add(
                    OnboardingVerifyEmailOtp(
                      email: widget.email,
                      otp: _otpController.text,
                      pin: _pinController.text,
                      confirmPin: _confirmPinController.text,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _PhoneSetupView extends StatefulWidget {
  final Function(String) onPhoneSent;
  const _PhoneSetupView({required this.onPhoneSent});

  @override
  State<_PhoneSetupView> createState() => _PhoneSetupViewState();
}

class _PhoneSetupViewState extends State<_PhoneSetupView> {
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Add Phone Number', style: AppStyles.h1(context)),
        const SizedBox(height: 8),
        Text(
          'We will send a code to verify your number',
          style: AppStyles.bodyMedium(context),
        ),
        const SizedBox(height: 32),

        AppTextField(
          hintText: '+234XXXXXXXXXX',
          labelText: 'Phone',
          controller: _phoneController,
          keyboardType: TextInputType.phone,
        ),

        const SizedBox(height: 40),
        BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            // _onSendPhoneOtp emits completion step 3 (since I patched it) or 4
            // Since we patched it, we rely on the parent listener to move but for now let's just call callback
            if (state is OnboardingStepSuccess &&
                (state.completedStep == 3 || state.completedStep == 4)) {
              widget.onPhoneSent(_phoneController.text.trim());
            }
          },
          builder: (context, state) {
            return GradientButton(
              text: 'Send Code',
              isLoading: state is OnboardingLoading,
              onPressed: () {
                context.read<OnboardingBloc>().add(
                  OnboardingSendPhoneOtp(phone: _phoneController.text.trim()),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class _VerifyPhoneOtpView extends StatefulWidget {
  final String phone;
  final VoidCallback onSuccess;
  const _VerifyPhoneOtpView({required this.phone, required this.onSuccess});

  @override
  State<_VerifyPhoneOtpView> createState() => _VerifyPhoneOtpViewState();
}

class _VerifyPhoneOtpViewState extends State<_VerifyPhoneOtpView> {
  final _otpController = TextEditingController();

  final defaultPinTheme = PinTheme(
    width: 60,
    height: 64,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: const Color(0xFF1A1A2E),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.withOpacity(0.2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Verify Phone', style: AppStyles.h1(context)),
        const SizedBox(height: 8),
        Text(
          'Enter the 6-digit code sent to ${widget.phone}',
          style: AppStyles.bodyMedium(context),
        ),
        const SizedBox(height: 40),

        Center(
          child: Pinput(
            controller: _otpController,
            length: 6,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A2E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF6C63FF)),
              ),
            ),
          ),
        ),

        const SizedBox(height: 40),
        BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingStepSuccess && state.completedStep == 4) {
              // Check the status to determine next step
              context.read<OnboardingBloc>().add(OnboardingCheckStatus());
            }
          },
          builder: (context, state) {
            return GradientButton(
              text: 'Verify',
              isLoading: state is OnboardingLoading,
              onPressed: () {
                context.read<OnboardingBloc>().add(
                  OnboardingVerifyPhoneOtp(
                    phone: widget.phone,
                    otp: _otpController.text,
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class _CompleteProfileView extends StatefulWidget {
  final VoidCallback onSuccess;
  const _CompleteProfileView({required this.onSuccess});

  @override
  State<_CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<_CompleteProfileView> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Profile Details', style: AppStyles.h1(context)),
        const SizedBox(height: 8),
        Text(
          'Let\'s set up your identity',
          style: AppStyles.bodyMedium(context),
        ),
        const SizedBox(height: 32),

        AppTextField(
          hintText: 'John',
          labelText: 'First Name',
          controller: _firstNameController,
        ),
        const SizedBox(height: 16),
        AppTextField(
          hintText: 'Doe',
          labelText: 'Last Name',
          controller: _lastNameController,
        ),
        const SizedBox(height: 40),

        BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingStepSuccess &&
                (state.completedStep == 3 || state.completedStep == 5)) {
              widget.onSuccess();
            }
          },
          builder: (context, state) {
            return GradientButton(
              text: 'Save Details',
              isLoading: state is OnboardingLoading,
              onPressed: () {
                context.read<OnboardingBloc>().add(
                  OnboardingCompleteProfile(
                    firstName: _firstNameController.text.trim(),
                    lastName: _lastNameController.text.trim(),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class _SetTransactionPinView extends StatefulWidget {
  @override
  State<_SetTransactionPinView> createState() => _SetTransactionPinViewState();
}

class _SetTransactionPinViewState extends State<_SetTransactionPinView> {
  final _pinController = TextEditingController();
  final _confirmPinController = TextEditingController();

  final defaultPinTheme = PinTheme(
    width: 60,
    height: 64,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: const Color(0xFF1A1A2E),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.withOpacity(0.2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Transaction PIN', style: AppStyles.h1(context)),
        const SizedBox(height: 8),
        Text('Secure your transactions', style: AppStyles.bodyMedium(context)),
        const SizedBox(height: 32),

        Text('New PIN', style: AppStyles.labelMedium(context)),
        const SizedBox(height: 8),
        Center(
          child: Pinput(
            controller: _pinController,
            length: 4,
            obscureText: true,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A2E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF6C63FF)),
              ),
            ),
          ),
        ),

        const SizedBox(height: 24),
        Text('Confirm PIN', style: AppStyles.labelMedium(context)),
        const SizedBox(height: 8),
        Center(
          child: Pinput(
            controller: _confirmPinController,
            length: 4,
            obscureText: true,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A2E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF6C63FF)),
              ),
            ),
          ),
        ),

        const SizedBox(height: 40),

        BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {
            return GradientButton(
              text: 'Finish Setup',
              isLoading: state is OnboardingLoading,
              onPressed: () {
                if (_pinController.text != _confirmPinController.text) {
                  AppUtils.showSnackBar(
                    context,
                    'PINs do not match',
                    isError: true,
                  );
                  return;
                }
                context.read<OnboardingBloc>().add(
                  OnboardingSetTransactionPin(
                    newPin: _pinController.text,
                    confirmPin: _confirmPinController.text,
                  ),
                );
              },
            );
          },
        ),
      ],
    ),
  );
}
}
