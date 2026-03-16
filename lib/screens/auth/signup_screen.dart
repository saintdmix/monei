import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/auth/auth_event.dart';
import '../../bloc/auth/auth_state.dart';
import '../../components/buttons/gradient_button.dart';
import '../../components/common/animated_background.dart';
import '../../components/inputs/app_text_field.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';
import '../../core/utils/utils.dart';
import '../chat/chat_screen.dart';
import 'email_verify_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _pinController = TextEditingController();
  final _confirmPinController = TextEditingController();

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
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _pinController.dispose();
    _confirmPinController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  void _handleSignUp() {
    if (_formKey.currentState?.validate() ?? false) {
      AppUtils.dismissKeyboard(context);
      context.read<AuthBloc>().add(
        AuthSignUpRequested(
          firstName: _firstNameController.text.trim(),
          lastName: _lastNameController.text.trim(),
          email: _emailController.text.trim(),
          pin: _pinController.text,
          phone: _phoneController.text.trim(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthEmailUnverified) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => EmailVerifyScreen(email: state.email),
            ),
          );
        } else if (state is AuthAuthenticated) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const ChatScreen()),
            (route) => false,
          );
        } else if (state is AuthError) {
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
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 28),
                          Text('Create Account', style: AppStyles.h1(context)),
                          const SizedBox(height: 8),
                          Text(
                            'Join Mr Monei and start chatting',
                            style: AppStyles.bodyMedium(
                              context,
                            ).copyWith(color: colors.textSecondary),
                          ),
                          const SizedBox(height: 36),
                          AppTextField(
                            hintText: 'John',
                            labelText: 'First Name',
                            controller: _firstNameController,
                            prefixIcon: Icons.person_outline_rounded,
                            validator: AppUtils.validateName,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 20),
                          AppTextField(
                            hintText: 'Doe',
                            labelText: 'Last Name',
                            controller: _lastNameController,
                            prefixIcon: Icons.person_outline_rounded,
                            validator: AppUtils.validateName,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 20),
                          AppTextField(
                            hintText: 'Email address',
                            labelText: 'Email',
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            prefixIcon: Icons.email_outlined,
                            validator: AppUtils.validateEmail,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 20),
                          AppTextField(
                            hintText: '+234XXXXXXXXXX',
                            labelText: 'Phone Number',
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            prefixIcon: Icons.phone_outlined,
                            validator: (val) => val == null || val.isEmpty
                                ? 'Phone is required'
                                : null,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 20),
                          AppTextField(
                            hintText: 'Password',
                            labelText: 'Password',
                            controller: _pinController,
                            obscureText: true,
                            keyboardType: TextInputType.name,
                            prefixIcon: Icons.lock_outline_rounded,
                            validator: (val) => val == null || val.length < 4
                                ? 'Password must be at least 4 digits'
                                : null,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 20),
                          AppTextField(
                            hintText: 'Re-enter Password',
                            labelText: 'Confirm Password',
                            controller: _confirmPinController,
                            obscureText: true,
                            keyboardType: TextInputType.name,
                            prefixIcon: Icons.lock_outline_rounded,
                            validator: (val) {
                              if (val != _pinController.text)
                                return 'Passwords do not match';
                              return null;
                            },
                            textInputAction: TextInputAction.done,
                          ),
                          const SizedBox(height: 32),
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return GradientButton(
                                text: 'Create Account',
                                isLoading: state is AuthLoading,
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
