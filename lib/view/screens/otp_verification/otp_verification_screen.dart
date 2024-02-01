import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';
import 'package:restaurent_kookbags/view/widgets/custom_pin_code.dart';

import '../../../utils/app_colors.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Center(
          child: Container(
            height: 120.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(AppImages.bglogo),
            )),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 22.h,
              ),
              Container(
                  width: 72.w,
                  height: 72.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.pink120,
                  ),
                  child: Icon(
                    Icons.lock,
                    color: Colors.red,
                    size: 36.w,
                  )),
              SizedBox(height: 48.h),
              Text(
                AppConstants.oTPVerifi,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4.h),
              Text(
                AppConstants.enterThe,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white100,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                '1234567890',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 32.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.h),
                    child: const CustomPinCode(),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              //==============================================> Button Section <===========================

              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.selectLanguageScreen);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 334.w,
                  height: 48.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFcd0608),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error,
                        color: Colors.white,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppConstants.theOTP,
                        style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 201.h,
              ),
              Text(
                AppConstants.didNot,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 15.h,
                ),
              ),
              Text(
                AppConstants.resend,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.h,
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
