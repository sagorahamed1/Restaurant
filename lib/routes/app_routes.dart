import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/view/screens/category/category_screen.dart';
import 'package:restaurent_kookbags/view/screens/home/home_screen.dart';

import '../view/screens/bottom_nav_bar/bottom_nav_bar.dart';


class AppRoutes{
  static const String homeScreen = "/home_screen.dart";
  static const String categoryScreen = "/category_screen.dart";
  static const String bottomNavBar = "/BottomNavBar.dart";

  static List <GetPage> routes = [
    GetPage(name: homeScreen, page: ()=> HomeScreen()),
    GetPage(name: categoryScreen, page: ()=> CategoryScreen()),
    GetPage(name: bottomNavBar, page: ()=> BottomNavBar()),
  ];
}