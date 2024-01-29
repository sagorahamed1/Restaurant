import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  AppImages.bglogo,
                  width: 240.w,
                  height: 120.h,
                ),
              ),

              //===============================================> Text Field Section <=================================================

              SingleChildScrollView(
                child: Stack(
                  children: [
                    Image.asset(
                      AppImages.patternBg,
                      fit: BoxFit.cover,
                      width: 375.w,
                      height: 300.w,
                    ),
                    Positioned(
                        left: 88.w,
                        right: 87.w,
                        top: 80.w,
                        bottom: 106.w,
                        child: Image.network(
                          'https://i.ibb.co/9Y1yYFQ/Whats-App-Image-2023-03-04-at-12-28-1.png',
                          width: 200.w,
                          height: 56.w,
                        )),
                  ],
                ),
              ),
              Container(
                width: 375.w,
                height: 522.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFeef4ff),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32.h,
                      ),
                      Center(child: SvgPicture.asset(AppIcons.knob)),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        AppConstants.userDetails,
                        style: TextStyle(
                          fontSize: 20.w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const CustomTextField(
                          title: AppConstants.fName,
                          prifixicon: Icon(Icons.person_outline)),
                      SizedBox(
                        height: 16.h,
                      ),
                      const CustomTextField(
                          title: AppConstants.lName,
                          prifixicon: Icon(Icons.person_outline)),
                      SizedBox(
                        height: 16.h,
                      ),
                      const CustomTextField(
                          title: AppConstants.email,
                          prifixicon: Icon(Icons.email_outlined)),
                      SizedBox(
                        height: 16.h,
                      ),
                      const CustomTextField(
                          title: AppConstants.rCode,
                          prifixicon: Icon(Icons.people_outline)),
                      SizedBox(
                        height: 46.h,
                      ),
                      CustomButtom(
                          title: AppConstants.signUp,
                          onpress: () {
                            Get.toNamed(AppRoutes.logInUpScreen);
                          }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
