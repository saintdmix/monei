import 'package:flutter/material.dart';

/// App color palette — ultra-modern dark theme with vibrant accents.
class AppColors {
  AppColors._();

  // ── Primary Gradient ──────────────────────────────────────────
  static const Color primary = Color(0xFF6C63FF);
  static const Color primaryLight = Color(0xFF8B83FF);
  static const Color primaryDark = Color(0xFF4A42E0);

  // ── Accent / Neon highlights ──────────────────────────────────
  static const Color accent = Color(0xFF00D9FF);
  static const Color accentGreen = Color(0xFF00E676);
  static const Color accentPink = Color(0xFFFF6090);

  // ── Background & Surface (deep dark) ─────────────────────────
  static const Color background = Color(0xFF0A0A1A);
  static const Color surface = Color(0xFF12122A);
  static const Color surfaceLight = Color(0xFF1C1C3A);
  static const Color surfaceCard = Color(0xFF1A1A35);
  static const Color surfaceElevated = Color(0xFF242450);

  // ── Text ──────────────────────────────────────────────────────
  static const Color textPrimary = Color(0xFFF5F5FF);
  static const Color textSecondary = Color(0xFFB0B0CC);
  static const Color textHint = Color(0xFF6E6E8E);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // ── Border & Divider ─────────────────────────────────────────
  static const Color border = Color(0xFF2A2A4A);
  static const Color divider = Color(0xFF1E1E3E);

  // ── Status ────────────────────────────────────────────────────
  static const Color success = Color(0xFF00E676);
  static const Color error = Color(0xFFFF5252);
  static const Color warning = Color(0xFFFFAB40);
  static const Color info = Color(0xFF448AFF);

  // ── Glassmorphism ─────────────────────────────────────────────
  static const Color glassWhite = Color(0x1AFFFFFF);
  static const Color glassBorder = Color(0x33FFFFFF);

  // ── Gradients ─────────────────────────────────────────────────
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, accent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [Color(0xFF0A0A1A), Color(0xFF10102A), Color(0xFF0A0A1A)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient cardGradient = LinearGradient(
    colors: [Color(0xFF1A1A3A), Color(0xFF14142A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient shimmerGradient = LinearGradient(
    colors: [Color(0xFF1C1C3A), Color(0xFF2A2A50), Color(0xFF1C1C3A)],
    stops: [0.0, 0.5, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient sendButtonGradient = LinearGradient(
    colors: [primary, Color(0xFF8B63FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient botBubbleGradient = LinearGradient(
    colors: [Color(0xFF1E1E40), Color(0xFF16163A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
