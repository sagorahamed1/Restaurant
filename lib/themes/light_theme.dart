import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';

ThemeData light = ThemeData(
      fontFamily: 'Poppins',
      primaryColor: AppColors.black100,
      //secondaryHeaderColor: const Color(0xff04B200),
      brightness: Brightness.light,
      cardColor: Colors.white,
      hintColor: Color(0xFF868889),
      disabledColor: const Color(0xFFBABFC4),
      shadowColor: Colors.grey[300],
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            // TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
            // TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
      }),
      dividerColor: Color(0xFFDBD5D5),
      useMaterial3: true,

      elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.r),
                  backgroundColor: AppColors.red,
                  foregroundColor: AppColors.white,
                  minimumSize: const Size(double.maxFinite, 56),
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: const TextStyle(
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                  ),
            ),
      ),

      inputDecorationTheme: InputDecorationTheme(
            prefixIconColor: AppColors.white,
            suffixIconColor: AppColors.white,
            iconColor: AppColors.white,
            filled: true,
            fillColor:const Color(0xFFEFECEC),
            hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.white100,
            ),
      ),

      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.bgWhite,
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: AppColors.black,
              fontSize: Dimensions.fontSizeExtraLarge,
              fontWeight: FontWeight.w600
          ),
          iconTheme: IconThemeData(
                color: AppColors.black,
                size: 23.r,
          )),
      scaffoldBackgroundColor: AppColors.bgWhite,
      dialogBackgroundColor: AppColors.white,
      menuButtonTheme: const MenuButtonThemeData(),
      // popupMenuTheme:  const PopupMenuThemeData(
      //       position: PopupMenuPosition.under,
      //       color: AppColors.whiteColor,
      //       surfaceTintColor: AppColors.whiteColor,
      // ),
      backgroundColor: Colors.transparent,
);