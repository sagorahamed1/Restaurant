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

class LogInUpScreen extends StatelessWidget {
  const LogInUpScreen({super.key});

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

              Image.network(
                'https://i.ibb.co/9Y1yYFQ/Whats-App-Image-2023-03-04-at-12-28-1.png',
                width: 200.w,
                height: 56.w,
              ),
              SizedBox(
                height: 65.h,
              ),
              Image.asset(
                AppImages.patternBg,
                fit: BoxFit.cover,
                width: 375.w,
                height: 300.w,
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
                        AppConstants.letsStart,
                        style: TextStyle(
                          fontSize: 20.w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      //====================================> TextFormField <================================

                      TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                AppImages.india1,
                                width: 34.w,
                                height: 23.h,
                              ),
                            ),
                            hintText: AppConstants.enterYour,
                            hintStyle: TextStyle(fontSize: 12.sp),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 2.w,
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            )),
                      ),
                      SizedBox(
                        height: 48.h,
                      ),
                      //====================================> Black Button <================================
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.otpSubmitScreen);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 334.w,
                          height: 48.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF353535),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r)),
                          ),
                          child: Text(
                            AppConstants.sentOTP,
                            style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),

                      //====================================> Bottom Section <================================

                      Center(
                          child: Column(
                        children: [
                          Text(
                            AppConstants.byContinue,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  AppConstants.termsOf,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFFF6E4E),
                                  ),
                                ),
                              ),
                              Text(
                                "&",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFFFF6E4E),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  AppConstants.privacyOf,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFFF6E4E),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
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
