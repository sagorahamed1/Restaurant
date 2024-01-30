import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/view/screens/add_new_address/add_new_address.dart';
import 'package:restaurent_kookbags/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:restaurent_kookbags/view/screens/log_in/log_in_screen.dart';

import 'themes/light_theme.dart';
import 'view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'view/screens/checkout/checkout_screen.dart';
import 'view/screens/order_succesfull/order_succesfull.dart';
import 'view/screens/payment/payment_screen.dart';
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
          initialRoute: AppRoutes.bottomNavBar,
          getPages: AppRoutes.routes,
          home: BottomNavBar()),
      designSize: Size(375.0, 812.0),
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// void main ()=> runApp(App());
//
// class App extends StatelessWidget {
//   const App({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true, elevation: .9,title: Text("simple app",
//         style: TextStyle(fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, fontSize: 25),
//       ),),
//       body: Sagor(),
//     );
//   }
// }
//
//
// class Sagor extends StatefulWidget{
//   const Sagor({super.key});
//
//   @override
//   State<Sagor> createState() => _SagorState();
// }
//
// class _SagorState extends State<Sagor> {
//
//   double cvalue = 0;
//
//   void sagor(double value) {
//     setState(() {
//       cvalue = value;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.amber),
//           ),
//           child: Column(
//             children: [
//               Slider(
//                 value: cvalue,
//                 min: 0.0,
//                 max: 10.0,
//                 onChanged: (value) {
//                   sagor(value);
//                 },
//                 activeColor: Colors.deepOrangeAccent,
//                 inactiveColor: Colors.lightGreen,
//                 divisions: 10,
//                 label: "Range",
//               ),
//               Text("range value $cvalue"),
//             ],
//           ),
//         )
//     );
//   }
// }
