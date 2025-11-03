import 'package:flutter/material.dart';

class ThemeConstants {
  // Light theme colors
  static const Color primaryLight = Color(0xFF2D4A6B);
  static const Color secondaryLight = Color(0xFFE8EDF5);
  static const Color accentLight = Color(0xFFD4AF37);
  static const Color backgroundLight = Color(0xFFFEFEFE);
  static const Color surfaceLight = Color(0xFFF8F9FA);
  static const Color textPrimaryLight = Color(0xFF1A1A1A);
  static const Color textSecondaryLight = Color(0xFF718096);
  static const Color sacredTeal = Color(0xFF4A9B9B);
  static const Color sacredLight = Color(0xFFF0F4F8);

  // Dark theme colors
  static const Color primaryDark = Color(0xFF4A6FA5);
  static const Color secondaryDark = Color(0xFF2A3F5F);
  static const Color accentDark = Color(0xFFE8C468);
  static const Color backgroundDark = Color(0xFF0F1419);
  static const Color surfaceDark = Color(0xFF1A202C);
  static const Color textPrimaryDark = Color(0xFFF7FAFC);
  static const Color textSecondaryDark = Color(0xFFA0AEC0);

  // Font families
  static const String interFontFamily = 'Inter';
  static const String crimsonTextFontFamily = 'CrimsonText';

  // Font sizes
  static const double h1Size = 32.0;
  static const double h2Size = 24.0;
  static const double h3Size = 20.0;
  static const double h4Size = 18.0;
  static const double bodySize = 16.0;
  static const double captionSize = 14.0;
  static const double smallSize = 12.0;

  // Line heights
  static const double headingLineHeight = 1.2;
  static const double bodyLineHeight = 1.6;
  static const double scriptureLineHeight = 1.8;

  // Spacing
  static const double smallSpacing = 8.0;
  static const double mediumSpacing = 16.0;
  static const double largeSpacing = 24.0;
  static const double xlargeSpacing = 32.0;

  // Border radius
  static const double smallRadius = 8.0;
  static const double mediumRadius = 12.0;
  static const double largeRadius = 16.0;
  static const double xlargeRadius = 24.0;

  // Shadows
  static const BoxShadow cardShadowLight = BoxShadow(
    color: Color(0x1A000000),
    blurRadius: 8.0,
    offset: Offset(0, 2),
  );

  static const BoxShadow cardShadowDark = BoxShadow(
    color: Color(0x33000000),
    blurRadius: 12.0,
    offset: Offset(0, 4),
  );
}
