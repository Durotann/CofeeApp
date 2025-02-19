import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromRGBO(198, 124, 78, 1),
    onPrimary: Colors.black,
    secondary: Color.fromRGBO(49, 49, 49, 1),
    onSecondary: Color.fromRGBO(227, 227, 227, 1),
    error: Colors.black,
    onError: Colors.black,
    surface: Colors.black,
    onSurface: Color(0xFFD8D8D8),
  ),
  scaffoldBackgroundColor: const Color(0xFFF2F2F2),
  bottomNavigationBarTheme:
      BottomNavigationBarThemeData(backgroundColor: Colors.white),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 8,
    ),
  ),
);
