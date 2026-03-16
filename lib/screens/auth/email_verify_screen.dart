import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/auth/auth_event.dart';
import '../../bloc/auth/auth_state.dart';
import '../../components/buttons/gradient_button.dart';
import '../../components/common/animated_background.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';
import '../../core/utils/utils.dart';
import '../chat/chat_screen.dart';

/// Screen shown after register / login when email is EMAIL_UNVERIFIED.
/// Instructs the user to check their email for a verification link.
class EmailVerifyScreen extends StatefulWidget {
  final String email;

  const EmailVerifyScreen({super.key, required this.email});

  @override
  State<EmailVerifyScreen> createState() => _EmailVerifyScreenState();
}

class _EmailVerifyScreenState extends State<EmailVerifyScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  // Countdown for resend
  int _resendSeconds = 60;
  Timer? _resendTimer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOut,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _fadeController, curve: Curves.easeOut));
    _fadeController.forward();

    _startResendTimer();
  }

  void _startResendTimer() {
    _resendSeconds = 60;
    _canResend = false;
    _resendTimer?.cancel();
    _resendTimer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted) {
        t.cancel();
        return;
      }
      setState(() {
        if (_resendSeconds > 0) {
          _resendSeconds--;
        } else {
          _canResend = true;
          t.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _resendTimer?.cancel();
    _fadeController.dispose();
    super.dispose();
  }

  void _handleCheckStatus() {
    context.read<AuthBloc>().add(AuthCheckStatus());
  }

  void _handleResend() {
    if (!_canResend) return;
    context.read<AuthBloc>().add(
      AuthSendVerificationEmail(email: widget.email),
    );
    _startResendTimer();
    AppUtils.showSnackBar(
      context,
      'Verification email resent to ${widget.email}',
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthAuthenticated) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const ChatScreen()),
            (route) => false,
          );
        } else if (state is AuthActionSuccess) {
          // Verification success but profile fetch failed — still navigate
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const ChatScreen()),
            (route) => false,
          );
        } else if (state is AuthError) {
          AppUtils.showSnackBar(context, state.message, isError: true);
        } else if (state is AuthEmailUnverified) {
          // The check status revealed they are still unverified
          // We don't need to show an error unless they explicitly clicked verify
          // but we can just stay on this screen.
        }
      },
      child: Scaffold(
        backgroundColor: colors.background,
        body: AnimatedBackground(
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ── Icon ──────────────────────────────────────
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [colors.primary, colors.accent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: colors.primary.withValues(alpha: 0.4),
                                blurRadius: 30,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.mark_email_unread_rounded,
                            color: Colors.white,
                            size: 46,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // ── Heading ───────────────────────────────────
                        Text(
                          'Verify Your Email',
                          style: AppStyles.h1(context),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: AppStyles.bodyMedium(context).copyWith(
                              color: colors.textSecondary,
                              height: 1.6,
                            ),
                            children: [
                              const TextSpan(
                                text:
                                    'We sent a verification link to your inbox.\n'
                                    'Please click the link in the email sent to\n',
                              ),
                              TextSpan(
                                text: widget.email,
                                style: AppStyles.bodyMedium(context).copyWith(
                                  color: colors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const TextSpan(text: '\nto verify your account.'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 48),

                        // ── Verify button ─────────────────────────────
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return GradientButton(
                              text: 'I\'ve Verified My Email',
                              isLoading: state is AuthLoading,
                              onPressed: _handleCheckStatus,
                            );
                          },
                        ),
                        const SizedBox(height: 28),

                        // ── Resend ─────────────────────────────────────
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Didn't receive the email? ",
                              style: AppStyles.bodySmall(context),
                            ),
                            GestureDetector(
                              onTap: _canResend ? _handleResend : null,
                              child: Text(
                                _canResend
                                    ? 'Resend Email'
                                    : 'Resend in ${_resendSeconds}s',
                                style: AppStyles.bodySmall(context).copyWith(
                                  color: _canResend
                                      ? colors.primary
                                      : colors.textHint,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),

                        // ── Info banner ────────────────────────────────
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: colors.primary.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: colors.primary.withValues(alpha: 0.2),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.info_outline_rounded,
                                color: colors.primary,
                                size: 20,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Check your spam folder if you don\'t see the email.',
                                  style: AppStyles.bodySmall(context).copyWith(
                                    color: colors.textSecondary,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
