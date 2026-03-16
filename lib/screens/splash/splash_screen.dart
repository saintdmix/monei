import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../auth/login_screen.dart';
import '../onboarding/onboarding_screen.dart';
import '../chat/chat_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _titleEntranceController;
  late Animation<double> _titleOpacity;
  late Animation<Offset> _titleSlide;
  late Animation<double> _subtitleOpacity;
  late Animation<Offset> _subtitleSlide;

  late AnimationController _circleRiseController;
  late Animation<double> _circleBottomOffset;

  late AnimationController _circleExpandController;
  late Animation<double> _circleRadius;

  late AnimationController _textFadeController;
  late Animation<Color?> _titleColor;
  late Animation<Color?> _subtitleColor;

  bool _hasCheckedPrefs = false;
  bool _shouldShowOnboarding = true;
  bool _isAuthenticated = false;

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    _checkOnboardingStatus();
    _setupTitleEntrance();
    _setupCircleRise();
    _setupCircleExpand();
    _setupTextFade();
    _startAnimationSequence();
  }

  Future<void> _checkOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    _shouldShowOnboarding = !(prefs.getBool('onboarding_complete') ?? false);

    final token = prefs.getString('auth_token');
    _isAuthenticated = token != null && token.isNotEmpty;

    _hasCheckedPrefs = true;
  }

  void _setupTitleEntrance() {
    _titleEntranceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    _titleOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _titleEntranceController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );

    _titleSlide = Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _titleEntranceController,
            curve: const Interval(0.0, 0.6, curve: Curves.easeOutCubic),
          ),
        );

    _subtitleOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _titleEntranceController,
        curve: const Interval(0.3, 0.8, curve: Curves.easeOut),
      ),
    );

    _subtitleSlide =
        Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _titleEntranceController,
            curve: const Interval(0.3, 0.8, curve: Curves.easeOutCubic),
          ),
        );
  }

  void _setupCircleRise() {
    _circleRiseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _circleBottomOffset = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _circleRiseController,
        curve: Curves.easeOutCubic,
      ),
    );
  }

  void _setupCircleExpand() {
    _circleExpandController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    _circleRadius = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _circleExpandController,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  void _setupTextFade() {
    _textFadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // These will animate to white regardless of theme — splash is always dark-based
    _titleColor =
        ColorTween(
          begin: const Color(0xFF6C63FF), // primary
          end: Colors.white,
        ).animate(
          CurvedAnimation(parent: _textFadeController, curve: Curves.easeInOut),
        );

    _subtitleColor =
        ColorTween(
          begin: const Color(0xFF6C63FF), // primary
          end: Colors.white70,
        ).animate(
          CurvedAnimation(parent: _textFadeController, curve: Curves.easeInOut),
        );
  }

  Future<void> _startAnimationSequence() async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    _titleEntranceController.forward();

    await Future.delayed(const Duration(milliseconds: 1100));
    if (!mounted) return;

    _circleRiseController.forward();
    await Future.delayed(const Duration(milliseconds: 1200));
    if (!mounted) return;

    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;

    _textFadeController.forward();
    _circleExpandController.forward();
    await Future.delayed(const Duration(milliseconds: 1000));
    if (!mounted) return;

    await Future.delayed(const Duration(milliseconds: 600));
    if (!mounted) return;

    while (!_hasCheckedPrefs) {
      await Future.delayed(const Duration(milliseconds: 50));
    }

    _navigateNext();
  }

  void _navigateNext() {
    if (!mounted) return;

    Widget destination;
    if (_isAuthenticated) {
      destination = const ChatScreen();
    } else if (_shouldShowOnboarding) {
      destination = const OnboardingScreen();
    } else {
      destination = const LoginScreen();
    }

    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => destination,
        transitionDuration: const Duration(milliseconds: 600),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  void dispose() {
    _titleEntranceController.dispose();
    _circleRiseController.dispose();
    _circleExpandController.dispose();
    _textFadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final centerY = size.height / 2;
    final diagonal = sqrt(size.width * size.width + size.height * size.height);

    const double circleSmallRadius = 20.0;
    final double circleMaxRadius = diagonal;
    // Splash screen is always dark
    const bgColor = Color(0xFF0A0A1A);
    const primaryColor = Color(0xFF6C63FF);

    return Scaffold(
      backgroundColor: bgColor,
      body: AnimatedBuilder(
        animation: Listenable.merge([
          _titleEntranceController,
          _circleRiseController,
          _circleExpandController,
          _textFadeController,
        ]),
        builder: (context, _) {
          final riseProgress = _circleBottomOffset.value;
          final circleY =
              centerY + (size.height + 100 - centerY) * (1 - riseProgress);
          final expandProgress = _circleRadius.value;
          final currentRadius =
              circleSmallRadius +
              (circleMaxRadius - circleSmallRadius) * expandProgress;

          return Stack(
            children: [
              Container(width: size.width, height: size.height, color: bgColor),
              Positioned(
                left: size.width / 2 - currentRadius,
                top: circleY - currentRadius,
                child: Container(
                  width: currentRadius * 2,
                  height: currentRadius * 2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SlideTransition(
                      position: _titleSlide,
                      child: Opacity(
                        opacity: _titleOpacity.value,
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SlideTransition(
                      position: _titleSlide,
                      child: Opacity(
                        opacity: _titleOpacity.value,
                        child: Text(
                          'Mr Monei',
                          style: GoogleFonts.poppins(
                            fontSize: 42,
                            fontWeight: FontWeight.w700,
                            color: _titleColor.value ?? primaryColor,
                            letterSpacing: -0.5,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SlideTransition(
                      position: _subtitleSlide,
                      child: Opacity(
                        opacity: _subtitleOpacity.value,
                        child: Text(
                          'The Angle of Wealth',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: _subtitleColor.value ?? primaryColor,
                            letterSpacing: 2.0,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
