import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors_extension.dart';

/// Manages theme mode (light/dark) with persistence via SharedPreferences.
class ThemeCubit extends ChangeNotifier {
  static const _key = 'theme_mode';
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;
  bool get isDark => _themeMode == ThemeMode.dark;

  ThemeCubit() {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString(_key);
    if (value == 'light') {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    _themeMode = _themeMode == ThemeMode.dark
        ? ThemeMode.light
        : ThemeMode.dark;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _key,
      _themeMode == ThemeMode.dark ? 'dark' : 'light',
    );
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, mode == ThemeMode.dark ? 'dark' : 'light');
  }
}

/// Provides pre-built light and dark ThemeData objects.
class AppTheme {
  AppTheme._();

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColorsExtension.dark.background,
    primaryColor: AppColorsExtension.dark.primary,
    colorScheme: ColorScheme.dark(
      primary: AppColorsExtension.dark.primary,
      secondary: AppColorsExtension.dark.accent,
      surface: AppColorsExtension.dark.surface,
      error: AppColorsExtension.dark.error,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    extensions: const [AppColorsExtension.dark],
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColorsExtension.light.background,
    primaryColor: AppColorsExtension.light.primary,
    colorScheme: ColorScheme.light(
      primary: AppColorsExtension.light.primary,
      secondary: AppColorsExtension.light.accent,
      surface: AppColorsExtension.light.surface,
      error: AppColorsExtension.light.error,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    extensions: const [AppColorsExtension.light],
  );
}
