import 'package:flutter/material.dart';
import 'package:gnosis_mobile/config/theme/light_theme.dart';
import 'package:gnosis_mobile/config/theme/dark_theme.dart';

class AppTheme {
  static ThemeData get lightTheme => LightTheme.theme;
  static ThemeData get darkTheme => DarkTheme.theme;
}
