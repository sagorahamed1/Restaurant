import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'themes/light_theme.dart';
import 'view/screens/sign_up/sign_up_screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          title: 'Kookbags',
          theme: light,
          initialRoute: AppRoutes.bottomNavBar,
          getPages: AppRoutes.routes,
          home: BottomNavBar()
      ),
      designSize: Size(375.0, 812.0),
    );
  }
}
