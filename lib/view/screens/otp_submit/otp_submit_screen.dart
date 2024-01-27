import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';
import 'package:restaurent_kookbags/view/widgets/custom_pin_code.dart';

import '../../../utils/app_colors.dart';

class OtpSubmitScreen extends StatelessWidget {
  const OtpSubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed:(){
          Get.back();
        }, icon:const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Center(
          child: Container(
                 height: 120.h,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.contain,
                     image: AssetImage(AppImages.bglogo),
                   )
                 ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
           physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20.w,),
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
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.w),
                    child: Text(
                      AppConstants.resendConfirm,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 226.h,),
              CustomButtom(title: AppConstants.submit, onpress: () {
                Get.toNamed(AppRoutes.otpNextScreen);
              }),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
