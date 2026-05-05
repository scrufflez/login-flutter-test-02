import 'package:flutter/material.dart';
import 'asgard_colors.dart';
import 'asgard_text_styles.dart';

class AsgardTheme {
  AsgardTheme._();

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: AsgardColors.background,
      colorScheme: const ColorScheme.dark(
        background: AsgardColors.background,
        surface: AsgardColors.surface,
        primary: AsgardColors.primaryBlue,
        error: AsgardColors.danger,
        onPrimary: Color(0xFF071014),
        onBackground: AsgardColors.textPrimary,
        onSurface: AsgardColors.textPrimary,
      ),
      textTheme: const TextTheme(
        bodyMedium: AsgardTextStyles.body,
        bodyLarge: AsgardTextStyles.body,
        labelLarge: AsgardTextStyles.button,
        headlineLarge: AsgardTextStyles.h1,
        bodySmall: AsgardTextStyles.caption,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AsgardColors.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AsgardColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AsgardColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AsgardColors.focusBlue, width: 1.5),
        ),
        hintStyle: const TextStyle(color: Color(0xFF6B7280), fontSize: 14),
        labelStyle: const TextStyle(color: AsgardColors.textSecondary, fontSize: 14),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AsgardColors.primaryBlue,
          foregroundColor: const Color(0xFF071014),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          minimumSize: const Size(double.infinity, 44),
          textStyle: AsgardTextStyles.button,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AsgardColors.primaryBlue,
          side: const BorderSide(color: AsgardColors.border),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          minimumSize: const Size(0, 34),
          textStyle: AsgardTextStyles.button,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AsgardColors.topBar,
        elevation: 0,
        titleTextStyle: AsgardTextStyles.brand,
      ),
    );
  }
}
