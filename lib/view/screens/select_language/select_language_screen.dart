import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';

import '../../../utils/app_icons.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

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
              SizedBox(
                height: 31.h,
              ),

              Image.network(
                'https://i.ibb.co/9Y1yYFQ/Whats-App-Image-2023-03-04-at-12-28-1.png',
                width: 200.w,
                height: 56.w,
              ),
              SizedBox(
                height: 40.h,
              ),

              //===============================================> Language Container Section <=================================================

              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 335.w,
                    height: 248.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF9F9F9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x7FA6ABBD),
                          blurRadius: 20,
                          offset: Offset(2.50, 2.50),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 26.h),
                        Text(
                          AppConstants.selectLanguage,
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 16.h),
                        SvgPicture.asset(AppIcons.group48),
                        SizedBox(height: 48.h),

                        //===============================================> TextFormField Section <=================================================

                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: SizedBox(
                                        width: 34.w,
                                        height: 23.w,
                                        child: Image.asset(AppImages.flagIn,
                                            height: 23.h)),
                                  ),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 11),
                                    child: SizedBox(
                                        width: 16.w,
                                        height: 16.w,
                                        child: SvgPicture.asset(
                                          AppIcons.frame,
                                          width: 16.w,
                                          height: 16.w,
                                        )),
                                  ),
                                  suffixIconColor: Colors.grey,
                                  prefixIconColor: Colors.grey,
                                  hintText: AppConstants.english,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      width: 2.w,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.0, color: Colors.grey),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.0, color: Colors.grey),
                                  )),
                            )),
                        SizedBox(height: 32.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 80.w,
                                height: 30.w,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.50.w,
                                        color: const Color(0xFF9B9B9B)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Center(child: Text('Cancel')),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(AppRoutes.bottomNavBar);
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 30.w,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF353535),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50.w,
                                          color: const Color(0xFF353535)),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Confirm',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //===============================================> Rounded Positioned Section <=================================================

                  Positioned(
                    left: 140,
                    right: 139,
                    top: -30,
                    child: Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFCD0608),
                        shape: CircleBorder(
                          side: BorderSide(
                              width: 1.w, color: const Color(0xFFCD0608)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          AppImages.location,
                          width: 40.w,
                          height: 40.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 51.h,
              ),

              //===============================================> Bottom Pattern Section <=================================================

              Image.asset(
                AppImages.patternBg,
                width: 375.w,
                height: 261.h,
                fit: BoxFit.fill,
              )
            ],
          ),
        ),
      ),
    );
  }
}
