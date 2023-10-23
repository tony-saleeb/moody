import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xff027A48),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        selectedIconTheme:
            IconThemeData(color: const Color(0xff027A48), size: 32),
        unselectedIconTheme: IconThemeData(color: Color(0xff667085), size: 28),
        unselectedItemColor: Color(0xff667085),
        selectedItemColor: const Color(0xff027A48),
      ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.libreBaskerville(
              fontWeight: FontWeight.w400, fontSize: 24, color: Colors.black),
          bodyLarge: GoogleFonts.libreBaskerville(
              fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
          bodyMedium: GoogleFonts.libreBaskerville(
              fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),
          bodySmall: GoogleFonts.libreBaskerville(
              fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black)),
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)));
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
  );
}
