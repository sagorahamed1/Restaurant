import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/themes/dark_theme.dart';
import 'package:restaurent_kookbags/themes/light_theme.dart';
import 'view/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurent App',
        theme: light,
      initialRoute: AppRoutes.homeScreen,
      getPages: AppRoutes.routes,
      home: HomeScreen()
    );
  }
}


