import 'package:flutter/material.dart';

ThemeData getColorTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 232, 229, 219),
    backgroundColor: Color.fromARGB(255, 241, 241, 227),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.greenAccent,
      foregroundColor: Colors.greenAccent)
  );
}
