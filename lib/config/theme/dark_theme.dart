import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTheme {
  static final ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF4A6FA5),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF4A6FA5),
      secondary: Color(0xFF2A3F5F),
      surface: Color(0xFF1A202C),
      background: Color(0xFF0F1419),
      error: Color(0xFFCF6679),
      onPrimary: Colors.white,
      onSecondary: Color(0xFFF7FAFC),
      onSurface: Color(0xFFF7FAFC),
      onBackground: Color(0xFFF7FAFC),
      onError: Colors.black,
    ),
    scaffoldBackgroundColor: const Color(0xFF0F1419),
    cardColor: const Color(0xFF1A202C),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF1A202C),
      foregroundColor: const Color(0xFFF7FAFC),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.crimsonText(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: const Color(0xFFF7FAFC),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.crimsonText(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: const Color(0xFFF7FAFC),
      ),
      displayMedium: GoogleFonts.crimsonText(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: const Color(0xFFF7FAFC),
      ),
      displaySmall: GoogleFonts.crimsonText(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: const Color(0xFFF7FAFC),
      ),
      headlineMedium: GoogleFonts.crimsonText(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: const Color(0xFFF7FAFC),
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: const Color(0xFFF7FAFC),
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: const Color(0xFFF7FAFC),
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: const Color(0xFFF7FAFC),
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: const Color(0xFFF7FAFC),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1A202C),
      selectedItemColor: Color(0xFF4A6FA5),
      unselectedItemColor: Color(0xFFA0AEC0),
      elevation: 4,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1A202C),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF4A6FA5), width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFCF6679), width: 2),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF4A6FA5),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xFF4A6FA5),
        side: const BorderSide(color: Color(0xFF4A6FA5)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
