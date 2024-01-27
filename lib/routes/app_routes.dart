import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/view/screens/category/category_screen.dart';
import 'package:restaurent_kookbags/view/screens/home/home_screen.dart';

import '../view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import '../view/screens/stores/stores_screen.dart';
import '../view/screens/stores_details/stores_details_screen.dart';


class AppRoutes{
  static const String homeScreen = "/home_screen";
  static const String categoryScreen = "/category_screen";
  static const String bottomNavBar = "/BottomNavBar";
  static const String storesDetailsScreen = "/StoresDetailsScreen";
  static const String storesScreen = "/StoresScreen";

  static List <GetPage> routes = [
    GetPage(name: homeScreen, page: ()=> HomeScreen()),
    GetPage(name: categoryScreen, page: ()=> CategoryScreen()),
    GetPage(name: storesDetailsScreen, page: ()=> StoresDetailsScreen()),
    GetPage(name: storesScreen, page: ()=> StoresScreen()),
  ];
}