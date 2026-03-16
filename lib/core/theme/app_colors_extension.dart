import 'package:flutter/material.dart';

/// A ThemeExtension that provides all custom app colors for both
/// light and dark modes. Access via `Theme.of(context).extension<AppColorsExtension>()`.
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  // ── Brand (same in both themes) ──
  final Color primary;
  final Color primaryLight;
  final Color primaryDark;
  final Color accent;
  final Color accentGreen;
  final Color accentPink;

  // ── Background & Surfaces ──
  final Color background;
  final Color surface;
  final Color surfaceLight;
  final Color surfaceCard;
  final Color surfaceElevated;

  // ── Text ──
  final Color textPrimary;
  final Color textSecondary;
  final Color textHint;
  final Color textOnPrimary;

  // ── Border & Divider ──
  final Color border;
  final Color divider;

  // ── Status ──
  final Color success;
  final Color error;
  final Color warning;
  final Color info;

  // ── Glass ──
  final Color glassWhite;
  final Color glassBorder;

  // ── Gradients ──
  final LinearGradient primaryGradient;
  final LinearGradient backgroundGradient;
  final LinearGradient cardGradient;
  final LinearGradient shimmerGradient;
  final LinearGradient sendButtonGradient;
  final LinearGradient botBubbleGradient;

  const AppColorsExtension({
    required this.primary,
    required this.primaryLight,
    required this.primaryDark,
    required this.accent,
    required this.accentGreen,
    required this.accentPink,
    required this.background,
    required this.surface,
    required this.surfaceLight,
    required this.surfaceCard,
    required this.surfaceElevated,
    required this.textPrimary,
    required this.textSecondary,
    required this.textHint,
    required this.textOnPrimary,
    required this.border,
    required this.divider,
    required this.success,
    required this.error,
    required this.warning,
    required this.info,
    required this.glassWhite,
    required this.glassBorder,
    required this.primaryGradient,
    required this.backgroundGradient,
    required this.cardGradient,
    required this.shimmerGradient,
    required this.sendButtonGradient,
    required this.botBubbleGradient,
  });

  // ── DARK THEME ──
  static const dark = AppColorsExtension(
    primary: Color(0xFF6C63FF),
    primaryLight: Color(0xFF8B83FF),
    primaryDark: Color(0xFF4A42E0),
    accent: Color(0xFF00D9FF),
    accentGreen: Color(0xFF00E676),
    accentPink: Color(0xFFFF6090),
    background: Color(0xFF0A0A1A),
    surface: Color(0xFF12122A),
    surfaceLight: Color(0xFF1C1C3A),
    surfaceCard: Color(0xFF1A1A35),
    surfaceElevated: Color(0xFF242450),
    textPrimary: Color(0xFFF5F5FF),
    textSecondary: Color(0xFFB0B0CC),
    textHint: Color(0xFF6E6E8E),
    textOnPrimary: Color(0xFFFFFFFF),
    border: Color(0xFF2A2A4A),
    divider: Color(0xFF1E1E3E),
    success: Color(0xFF00E676),
    error: Color(0xFFFF5252),
    warning: Color(0xFFFFAB40),
    info: Color(0xFF448AFF),
    glassWhite: Color(0x1AFFFFFF),
    glassBorder: Color(0x33FFFFFF),
    primaryGradient: LinearGradient(
      colors: [Color(0xFF6C63FF), Color(0xFF00D9FF)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    backgroundGradient: LinearGradient(
      colors: [Color(0xFF0A0A1A), Color(0xFF10102A), Color(0xFF0A0A1A)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    cardGradient: LinearGradient(
      colors: [Color(0xFF1A1A3A), Color(0xFF14142A)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    shimmerGradient: LinearGradient(
      colors: [Color(0xFF1C1C3A), Color(0xFF2A2A50), Color(0xFF1C1C3A)],
      stops: [0.0, 0.5, 1.0],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    sendButtonGradient: LinearGradient(
      colors: [Color(0xFF6C63FF), Color(0xFF8B63FF)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    botBubbleGradient: LinearGradient(
      colors: [Color(0xFF1E1E40), Color(0xFF16163A)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  // ── LIGHT THEME ──
  static const light = AppColorsExtension(
    primary: Color(0xFF6C63FF),
    primaryLight: Color(0xFF8B83FF),
    primaryDark: Color(0xFF4A42E0),
    accent: Color(0xFF00B8D4),
    accentGreen: Color(0xFF00C853),
    accentPink: Color(0xFFFF4081),
    background: Color(0xFFF5F5FA),
    surface: Color(0xFFFFFFFF),
    surfaceLight: Color(0xFFF0F0F8),
    surfaceCard: Color(0xFFF8F8FF),
    surfaceElevated: Color(0xFFEDEDF8),
    textPrimary: Color(0xFF1A1A2E),
    textSecondary: Color(0xFF5C5C7A),
    textHint: Color(0xFF9999B0),
    textOnPrimary: Color(0xFFFFFFFF),
    border: Color(0xFFE0E0F0),
    divider: Color(0xFFE8E8F4),
    success: Color(0xFF00C853),
    error: Color(0xFFFF1744),
    warning: Color(0xFFFF9100),
    info: Color(0xFF2979FF),
    glassWhite: Color(0x33FFFFFF),
    glassBorder: Color(0x22000000),
    primaryGradient: LinearGradient(
      colors: [Color(0xFF6C63FF), Color(0xFF00B8D4)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    backgroundGradient: LinearGradient(
      colors: [Color(0xFFF5F5FA), Color(0xFFEEEEFA), Color(0xFFF5F5FA)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    cardGradient: LinearGradient(
      colors: [Color(0xFFF8F8FF), Color(0xFFF0F0FA)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    shimmerGradient: LinearGradient(
      colors: [Color(0xFFEEEEFA), Color(0xFFE0E0F0), Color(0xFFEEEEFA)],
      stops: [0.0, 0.5, 1.0],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    sendButtonGradient: LinearGradient(
      colors: [Color(0xFF6C63FF), Color(0xFF8B63FF)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    botBubbleGradient: LinearGradient(
      colors: [Color(0xFFF0F0FA), Color(0xFFE8E8F4)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? background,
    // ... simplified, not typically used
  }) {
    return this;
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryLight: Color.lerp(primaryLight, other.primaryLight, t)!,
      primaryDark: Color.lerp(primaryDark, other.primaryDark, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accentGreen: Color.lerp(accentGreen, other.accentGreen, t)!,
      accentPink: Color.lerp(accentPink, other.accentPink, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceLight: Color.lerp(surfaceLight, other.surfaceLight, t)!,
      surfaceCard: Color.lerp(surfaceCard, other.surfaceCard, t)!,
      surfaceElevated: Color.lerp(surfaceElevated, other.surfaceElevated, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textHint: Color.lerp(textHint, other.textHint, t)!,
      textOnPrimary: Color.lerp(textOnPrimary, other.textOnPrimary, t)!,
      border: Color.lerp(border, other.border, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      glassWhite: Color.lerp(glassWhite, other.glassWhite, t)!,
      glassBorder: Color.lerp(glassBorder, other.glassBorder, t)!,
      primaryGradient: t < 0.5 ? primaryGradient : other.primaryGradient,
      backgroundGradient: t < 0.5
          ? backgroundGradient
          : other.backgroundGradient,
      cardGradient: t < 0.5 ? cardGradient : other.cardGradient,
      shimmerGradient: t < 0.5 ? shimmerGradient : other.shimmerGradient,
      sendButtonGradient: t < 0.5
          ? sendButtonGradient
          : other.sendButtonGradient,
      botBubbleGradient: t < 0.5 ? botBubbleGradient : other.botBubbleGradient,
    );
  }
}

/// Convenience extension on BuildContext to access app colors.
extension AppColorsContext on BuildContext {
  AppColorsExtension get appColors =>
      Theme.of(this).extension<AppColorsExtension>() ?? AppColorsExtension.dark;
}
