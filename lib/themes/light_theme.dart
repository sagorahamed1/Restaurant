import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  fontFamily: "Poppins",
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.blue, // Color for app bar
  ),


  textTheme: const TextTheme(
    displaySmall: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.black),
    displayLarge: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium : TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
  ),


  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue, // Color for buttons
    textTheme: ButtonTextTheme.primary,
  ),
);