import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors_extension.dart';

/// Centralized text styles using Poppins from Google Fonts.
/// For theme-aware colors, use the versions that take BuildContext.
class AppStyles {
  AppStyles._();

  // ── Headings ──────────────────────────────────────────────────
  static TextStyle h1(BuildContext context) => GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: context.appColors.textPrimary,
    letterSpacing: -0.5,
    height: 1.2,
  );

  static TextStyle h2(BuildContext context) => GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: context.appColors.textPrimary,
    letterSpacing: -0.3,
    height: 1.3,
  );

  static TextStyle h3(BuildContext context) => GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: context.appColors.textPrimary,
    height: 1.3,
  );

  static TextStyle h4(BuildContext context) => GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: context.appColors.textPrimary,
    height: 1.4,
  );

  // ── Body ──────────────────────────────────────────────────────
  static TextStyle bodyLarge(BuildContext context) => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: context.appColors.textPrimary,
    height: 1.6,
  );

  static TextStyle bodyMedium(BuildContext context) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: context.appColors.textPrimary,
    height: 1.5,
  );

  static TextStyle bodySmall(BuildContext context) => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: context.appColors.textSecondary,
    height: 1.5,
  );

  // ── Labels / Buttons ─────────────────────────────────────────
  static TextStyle get buttonText => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    letterSpacing: 0.5,
  );

  static TextStyle get buttonTextSmall => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle labelMedium(BuildContext context) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: context.appColors.textSecondary,
  );

  static TextStyle labelSmall(BuildContext context) => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: context.appColors.textHint,
  );

  // ── Input / Hint ──────────────────────────────────────────────
  static TextStyle inputText(BuildContext context) => GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: context.appColors.textPrimary,
    height: 1.5,
  );

  static TextStyle hintText(BuildContext context) => GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: context.appColors.textHint,
  );

  // ── Chat-specific ─────────────────────────────────────────────
  static TextStyle chatMessage(BuildContext context) => GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: context.appColors.textPrimary,
    height: 1.6,
  );

  static TextStyle chatTimestamp(BuildContext context) => GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: context.appColors.textHint,
  );

  // ── Decorations ───────────────────────────────────────────────
  static BoxDecoration glassCard(BuildContext context) => BoxDecoration(
    color: context.appColors.glassWhite,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(color: context.appColors.glassBorder, width: 1),
  );

  static BoxDecoration surfaceCard(BuildContext context) => BoxDecoration(
    gradient: context.appColors.cardGradient,
    borderRadius: BorderRadius.circular(16),
    border: Border.all(color: context.appColors.border, width: 0.5),
  );

  static BoxDecoration elevatedSurface(BuildContext context) => BoxDecoration(
    color: context.appColors.surfaceElevated,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.3),
        blurRadius: 20,
        offset: const Offset(0, 8),
      ),
    ],
  );

  // ── Input decoration ──────────────────────────────────────────
  static InputDecoration inputDecoration(
    BuildContext context, {
    required String hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    final colors = context.appColors;
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppStyles.hintText(context),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: colors.surfaceLight,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.border, width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.primary, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.error, width: 1.5),
      ),
      errorStyle: GoogleFonts.poppins(fontSize: 12, color: colors.error),
    );
  }
}
