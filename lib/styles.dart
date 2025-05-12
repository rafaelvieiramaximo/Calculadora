import 'package:flutter/material.dart';

class AppThemes {
  static final light = ThemeData(
    primarySwatch: Colors.indigo,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );

  static final dark = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(color: Colors.white, fontSize: 24),
    ),
  );
}
