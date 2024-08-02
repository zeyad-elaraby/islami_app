import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xFFB7935F);
Color primaryDarkColor = Color(0xFF141A2E);
Color blackColor = Color(0xFF242424);
Color yellowColor = Color(0xFFFACC1D);
Color lightMoodCardColor = Color(0xCBF8F8F8);
Color darkMoodCardColor = Color(0xCC141A2E);
Color darkModeSebhaZekrText = Color(0xFF0F1424);
// Color

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          // titleTextStyle:
          iconTheme: IconThemeData(size: 30, color: blackColor)),
      cardTheme: CardTheme(
        color: lightMoodCardColor,
        margin: EdgeInsets.all(12),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.transparent)),
        elevation: 15,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        titleMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
        titleSmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        bodyLarge: GoogleFonts.inder(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        bodyMedium: GoogleFonts.inder(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
        bodySmall: GoogleFonts.inder(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        headlineLarge: GoogleFonts.inder(
            fontSize: 30, fontWeight: FontWeight.w400, color: Colors.black),
        headlineMedium: GoogleFonts.inder(
            fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
        headlineSmall: GoogleFonts.inder(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
        labelLarge: GoogleFonts.inder(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        labelMedium: GoogleFonts.inder(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
        labelSmall: GoogleFonts.inder(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        displayLarge: GoogleFonts.inder(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        displayMedium: GoogleFonts.inder(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
        displaySmall: GoogleFonts.inder(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
      ),
      dividerTheme: DividerThemeData(
        color: primaryColor,
        thickness: 2,
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          // titleTextStyle:
          iconTheme: IconThemeData(size: 30, color: Colors.white)),
      cardTheme: CardTheme(
        color: darkMoodCardColor,
        margin: EdgeInsets.all(12),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.transparent)),
        elevation: 15,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        backgroundColor: primaryDarkColor,
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        titleMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
        titleSmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        bodyLarge: GoogleFonts.inder(
            fontSize: 30, fontWeight: FontWeight.w700, color: yellowColor),
        bodyMedium: GoogleFonts.inder(
            fontSize: 25, fontWeight: FontWeight.w700, color: yellowColor),
        bodySmall: GoogleFonts.inder(
            fontSize: 20, fontWeight: FontWeight.w700, color: yellowColor),
        headlineLarge: GoogleFonts.inder(
            fontSize: 30, fontWeight: FontWeight.w400, color: yellowColor),
        headlineMedium: GoogleFonts.inder(
            fontSize: 25, fontWeight: FontWeight.w400, color: yellowColor),
        headlineSmall: GoogleFonts.inder(
            fontSize: 20, fontWeight: FontWeight.w400, color: yellowColor),
        labelLarge: GoogleFonts.inder(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        labelMedium: GoogleFonts.inder(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
        labelSmall: GoogleFonts.inder(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: darkModeSebhaZekrText),
        displayLarge: GoogleFonts.inder(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: darkModeSebhaZekrText),
        displayMedium: GoogleFonts.inder(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: darkModeSebhaZekrText),
        displaySmall: GoogleFonts.inder(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: darkModeSebhaZekrText),
      ),
      dividerTheme: DividerThemeData(
        color: yellowColor,
        thickness: 2,
      ));
}
