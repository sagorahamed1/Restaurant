import 'package:flutter/material.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';

ThemeData dark = ThemeData(
  fontFamily: "Poppins",
  primarySwatch : Colors.deepOrange,
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    color: Colors.grey[800], // Color for app bar
  ),
  textTheme: const TextTheme(
    displaySmall : TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium : TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
    displayLarge : TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),


  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.deepPurple, // Color for buttons
    textTheme: ButtonTextTheme.primary,
  ),
);




