import 'package:flutter/material.dart';

Color primaryColor = Colors.deepPurple;
ThemeData theme = ThemeData(
  useMaterial3: true,
  primaryColor: primaryColor,
  fontFamily: 'Montserrat',
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    elevation: 0,
    titleTextStyle: TextStyle(
      color: primaryColor,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
    actionsIconTheme: IconThemeData(
      color: primaryColor,
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: primaryColor,
    contentTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    isDense: false,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2,
      ),
    ),
    contentPadding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: primaryColor,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: primaryColor,
        width: 1,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: primaryColor,
        width: 1,
      ),
    ),
    hintStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.grey,
    ),
    labelStyle: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.normal,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(
      color: Colors.black,
    ),
    selectedLabelStyle: TextStyle(
      color: Colors.black,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: primaryColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.normal,
    ),
  ),
);
