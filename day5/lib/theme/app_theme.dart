import 'package:flutter/material.dart';

class AppTheme {
  static const backgroundColor = Color(0xFFC9D5D9);

  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  );
}
