import 'package:flutter/material.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';

import '../utils/dimensions.dart';

ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.bgWhite,
    // highlightColor: Color(0xFF9B9B9B),
    hintColor: const Color(0xFF9B9B9B),
    brightness: Brightness.light,




    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.w300, fontSize: Dimensions.fontSizeDefault),
      displayMedium: TextStyle(
          fontWeight: FontWeight.w400, fontSize: Dimensions.fontSizeDefault),
      displaySmall: TextStyle(
          fontWeight: FontWeight.w500, fontSize: Dimensions.fontSizeDefault),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.w600, fontSize: Dimensions.fontSizeDefault),
      headlineSmall: TextStyle(
          fontWeight: FontWeight.w700, fontSize: Dimensions.fontSizeDefault),
      titleLarge: TextStyle(
          fontWeight: FontWeight.w800, fontSize: Dimensions.fontSizeDefault),
      bodySmall: TextStyle(
          fontWeight: FontWeight.w900, fontSize: Dimensions.fontSizeDefault),
      titleMedium: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(fontSize: 12.0),
      bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
    ));
