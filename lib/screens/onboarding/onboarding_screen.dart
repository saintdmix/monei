import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/theme/app_colors_extension.dart';
import '../auth/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  late AnimationController _contentAnimController;
  late Animation<double> _contentOpacity;
  late Animation<Offset> _contentSlide;

  // Brand colors (constant across themes)
  static const _primary = Color(0xFF6C63FF);
  static const _accent = Color(0xFF00D9FF);
  static const _accentGreen = Color(0xFF00E676);
  static const _accentPink = Color(0xFFFF6090);

  final List<_OnboardingData> _pages = [
    _OnboardingData(
      icon: Icons.currency_bitcoin_rounded,
      secondaryIcon: Icons.account_balance_wallet_rounded,
      title: 'Crypto & Fiat\nManagement',
      description:
          'Check balances, swap tokens, and get real-time crypto prices. '
          'Send and receive money, manage virtual accounts, and handle '
          'peer-to-peer transfers seamlessly.',
      features: [
        _Feature(Icons.pie_chart_rounded, 'Portfolio & Balances'),
        _Feature(Icons.swap_horiz_rounded, 'Token Swaps'),
        _Feature(Icons.trending_up_rounded, 'Live Market Trends'),
        _Feature(Icons.send_rounded, 'P2P Transfers'),
      ],
      gradientColors: [_primary, _accent],
    ),
    _OnboardingData(
      icon: Icons.receipt_long_rounded,
      secondaryIcon: Icons.payments_rounded,
      title: 'Bill Payments\nMade Easy',
      description:
          'Pay for utilities, airtime, and data in seconds. Schedule future '
          'payments and save your beneficiaries for quick repeat transactions.',
      features: [
        _Feature(Icons.bolt_rounded, 'Utilities & Airtime'),
        _Feature(Icons.schedule_rounded, 'Scheduled Payments'),
        _Feature(Icons.bookmark_rounded, 'Saved Beneficiaries'),
        _Feature(Icons.shield_rounded, 'Secure Transactions'),
      ],
      gradientColors: [_accentGreen, _accent],
    ),
    _OnboardingData(
      icon: Icons.verified_user_rounded,
      secondaryIcon: Icons.analytics_rounded,
      title: 'KYC & Smart\nInvestments',
      description:
          'Complete your KYC verification, manage transaction PINs, and '
          'explore investment banking with tokenized stock purchases '
          'and securities insights.',
      features: [
        _Feature(Icons.verified_rounded, 'KYC Verification'),
        _Feature(Icons.history_rounded, 'Transaction History'),
        _Feature(Icons.candlestick_chart_rounded, 'Tokenized Stocks'),
        _Feature(Icons.insights_rounded, 'Securities Insights'),
      ],
      gradientColors: [_accentPink, _primary],
    ),
  ];

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    _contentAnimController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _contentOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _contentAnimController, curve: Curves.easeOut),
    );

    _contentSlide =
        Tween<Offset>(begin: const Offset(0, 0.15), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _contentAnimController,
            curve: Curves.easeOutCubic,
          ),
        );

    _contentAnimController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _contentAnimController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() => _currentPage = page);
    _contentAnimController.reset();
    _contentAnimController.forward();
  }

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
      );
    } else {
      _navigateToLogin();
    }
  }

  Future<void> _navigateToLogin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_complete', true);

    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => const LoginScreen(),
        transitionDuration: const Duration(milliseconds: 600),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: colors.background,
      body: Stack(
        children: [
          Positioned(
            top: -80,
            right: -80,
            child: _buildGlowCircle(
              220,
              colors.primary.withValues(alpha: 0.06),
            ),
          ),
          Positioned(
            bottom: -60,
            left: -60,
            child: _buildGlowCircle(180, colors.accent.withValues(alpha: 0.04)),
          ),

          Column(
            children: [
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: _navigateToLogin,
                        style: TextButton.styleFrom(
                          foregroundColor: colors.textHint,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                        ),
                        child: Text(
                          'Skip',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colors.textHint,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return _buildPage(_pages[index]);
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, bottomPadding + 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _pages.length,
                        (index) => _buildDot(index),
                      ),
                    ),
                    const SizedBox(height: 32),

                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: _pages[_currentPage].gradientColors,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: _pages[_currentPage].gradientColors[0]
                                  .withValues(alpha: 0.35),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: _nextPage,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _currentPage == _pages.length - 1
                                    ? 'Get Started'
                                    : 'Next',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPage(_OnboardingData data) {
    final colors = context.appColors;
    return AnimatedBuilder(
      animation: _contentAnimController,
      builder: (context, _) {
        return SlideTransition(
          position: _contentSlide,
          child: Opacity(
            opacity: _contentOpacity.value,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildIconShowcase(data),
                        const SizedBox(height: 32),
                        Text(
                          data.title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: colors.textPrimary,
                            letterSpacing: -0.5,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          data.description,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: colors.textSecondary,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          alignment: WrapAlignment.center,
                          children: data.features
                              .map(
                                (f) =>
                                    _buildFeatureChip(f, data.gradientColors),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildIconShowcase(_OnboardingData data) {
    final colors = context.appColors;
    return SizedBox(
      height: 140,
      width: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  data.gradientColors[0].withValues(alpha: 0.2),
                  data.gradientColors[0].withValues(alpha: 0.0),
                ],
              ),
            ),
          ),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: data.gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: data.gradientColors[0].withValues(alpha: 0.4),
                  blurRadius: 30,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Icon(data.icon, color: Colors.white, size: 42),
          ),
          Positioned(
            right: 20,
            top: 10,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: colors.surfaceElevated,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: data.gradientColors[1].withValues(alpha: 0.3),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(
                data.secondaryIcon,
                color: data.gradientColors[1],
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureChip(_Feature feature, List<Color> gradientColors) {
    final colors = context.appColors;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: colors.surfaceLight,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: gradientColors[0].withValues(alpha: 0.15),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(feature.icon, color: gradientColors[0], size: 16),
          const SizedBox(width: 8),
          Text(
            feature.label,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: colors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    final isActive = index == _currentPage;
    final colors = context.appColors;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOutCubic,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 28 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: isActive
            ? LinearGradient(colors: _pages[_currentPage].gradientColors)
            : null,
        color: isActive ? null : colors.surfaceLight,
      ),
    );
  }

  Widget _buildGlowCircle(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}

class _OnboardingData {
  final IconData icon;
  final IconData secondaryIcon;
  final String title;
  final String description;
  final List<_Feature> features;
  final List<Color> gradientColors;

  const _OnboardingData({
    required this.icon,
    required this.secondaryIcon,
    required this.title,
    required this.description,
    required this.features,
    required this.gradientColors,
  });
}

class _Feature {
  final IconData icon;
  final String label;

  const _Feature(this.icon, this.label);
}
