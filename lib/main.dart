import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/themes/light_theme.dart';
import 'package:restaurent_kookbags/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'view/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
          theme: light,
        initialRoute: AppRoutes.bottomNavBar,
        getPages: AppRoutes.routes,
        home: BottomNavBar()
      ),
      designSize: Size(375.0, 522.0),
    );
  }
}


