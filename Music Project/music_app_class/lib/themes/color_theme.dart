import 'package:flutter/material.dart';

ThemeData getColorTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 238, 229, 198),
    backgroundColor: Color.fromARGB(255, 243, 243, 203),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.greenAccent,
      foregroundColor: Colors.greenAccent)
  );
}
