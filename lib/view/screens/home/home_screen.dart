import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
              onPressed: () {
                Get.toNamed(AppRoutes.categoryScreen);
              },
              child: Text(
                "this is dark",
                style: TextStyle(),
              )),
        ),
      ),
    );
  }
}
