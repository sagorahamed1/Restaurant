import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/view/screens/home/home_screen.dart';

import 'themes/light_theme.dart';
import 'view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'view/screens/otp_submit/otp_submit_screen.dart';
import 'view/screens/sign_up/sign_up_screen.dart';


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
          theme: light,
        initialRoute: AppRoutes.signUpScreen,
        getPages: AppRoutes.routes,
        home: SignUpScreen()
      ),
      designSize: Size(375.0, 812.0),
    );
  }
}


