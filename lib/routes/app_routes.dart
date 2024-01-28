import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/view/screens/category/category_screen.dart';
import 'package:restaurent_kookbags/view/screens/home/home_screen.dart';
import 'package:restaurent_kookbags/view/screens/otp_next/otp_next_screen.dart';
import 'package:restaurent_kookbags/view/screens/otp_submit/otp_submit_screen.dart';
import 'package:restaurent_kookbags/view/screens/otp_verification/otp_verification_screen.dart';
import 'package:restaurent_kookbags/view/screens/sign_up/sign_up_screen.dart';
import '../view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import '../view/screens/stores/stores_screen.dart';
import '../view/screens/stores_details/stores_details_screen.dart';


class AppRoutes{

  static const String homeScreen = "/home_screen.dart";
  static const String categoryScreen = "/category_screen.dart";
  static const String bottomNavBar = "/BottomNavBar.dart";
  static const String otpSubmitScreen = "/otp_submit_screen.dart";
  static const String otpNextScreen = "/otp_next_screen.dart";
  static const String otpVerificationScreen = "/otp_verification_screen.dart";
  static const String signUpScreen = "/sign_up_screen.dart";
  static const String storesDetailsScreen = "/StoresDetailsScreen";
  static const String storesScreen = "/StoresScreen";


  static List <GetPage> routes = [
    GetPage(name: homeScreen, page: ()=> HomeScreen()),
    GetPage(name: categoryScreen, page: ()=> CategoryScreen()),
    GetPage(name: storesDetailsScreen, page: ()=> StoresDetailsScreen()),
    GetPage(name: storesScreen, page: ()=> StoresScreen()),
    GetPage(name: bottomNavBar, page: ()=> BottomNavBar()),
    GetPage(name: otpSubmitScreen, page: ()=> OtpSubmitScreen()),
    GetPage(name: otpNextScreen, page: ()=> OtpNextScreen()),
    GetPage(name: otpVerificationScreen, page: ()=> OtpVerificationScreen()),
    GetPage(name: signUpScreen, page: ()=> SignUpScreen()),

  ];
}