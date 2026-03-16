import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/onboarding/onboarding_bloc.dart';
import '../../bloc/onboarding/onboarding_event.dart';
import '../../bloc/onboarding/onboarding_state.dart';
import '../../components/buttons/gradient_button.dart';
import '../../components/common/animated_background.dart';
import '../../components/inputs/app_text_field.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';
import '../../core/utils/utils.dart';
import '../onboarding/onboarding_flow_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOut,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.15),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _fadeController, curve: Curves.easeOut));
    _fadeController.forward();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  void _handleSignUp() {
    if (_formKey.currentState?.validate() ?? false) {
      AppUtils.dismissKeyboard(context);
      context.read<OnboardingBloc>().add(
        OnboardingRequestEmailSignup(email: _emailController.text.trim()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state is OnboardingStepSuccess && state.completedStep == 1) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => OnboardingFlowScreen(
                initialEmail: _emailController.text.trim(),
                startStep: 2,
              ),
            ),
          );
        } else if (state is OnboardingError) {
          AppUtils.showSnackBar(context, state.message, isError: true);
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 72,
                            height: 72,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: colors.primary.withValues(alpha: 0.35),
                                  blurRadius: 30,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                'assets/images/logo.png',
                                width: 72,
                                height: 72,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(height: 28),
                          Text('Create Account', style: AppStyles.h1(context)),
                          const SizedBox(height: 8),
                          Text(
                            'Get started with your email',
                            style: AppStyles.bodyMedium(
                              context,
                            ).copyWith(color: colors.textSecondary),
                          ),
                          const SizedBox(height: 36),
                          AppTextField(
                            hintText: 'Email address',
                            labelText: 'Email',
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            prefixIcon: Icons.email_outlined,
                            validator: AppUtils.validateEmail,
                            textInputAction: TextInputAction.done,
                          ),
                          const SizedBox(height: 32),
                          BlocBuilder<OnboardingBloc, OnboardingState>(
                            builder: (context, state) {
                              return GradientButton(
                                text: 'Continue',
                                isLoading: state is OnboardingLoading,
                                onPressed: _handleSignUp,
                              );
                            },
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'By signing up you agree to our Terms & Privacy Policy',
                            style: AppStyles.labelSmall(context),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 28),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account? ',
                                style: AppStyles.bodySmall(context),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.of(context).pop(),
                                child: Text(
                                  'Sign In',
                                  style: AppStyles.bodySmall(context).copyWith(
                                    color: colors.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
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
