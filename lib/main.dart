import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/view/screens/bottom_nav_bar/bottom_nav_bar.dart';

import 'themes/light_theme.dart';
import 'view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'view/screens/checkout/checkout_screen.dart';
import 'view/screens/select_language/select_language_screen.dart';
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
          initialRoute: AppRoutes.checkoutScreen,
          getPages: AppRoutes.routes,
          home: CheckoutScreen()),
      designSize: Size(375.0, 812.0),
    );
  }
}
