import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';

import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.addNewAddress),
        centerTitle: true,
        elevation: 12,
        leading: const Icon(Icons.arrow_back_ios_outlined),
        // toolbarOpacity: 0.5,
        shadowColor: const Color(0xFFe8e8e8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.w),
          child: Column(
            children: [
              Container(
                width: 334.w,
                height: 155.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.gMap),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 12.w),
              Text(
                AppConstants.addTheLocation,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFCD0608),
                  fontSize: 10.w,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0.w,
                  letterSpacing: 0.30.w,
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 106.w,
                    height: 48.w,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      shadows: [
                        BoxShadow(
                          color: const Color(0x33000000),
                          blurRadius: 20.r,
                          offset: const Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 12),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppIcons.houseframe,height: 24.w),
                          SizedBox(width: 8.w),
                          Text(AppConstants.home,
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    width: 106.w,
                    height: 48.w,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      shadows: [
                        BoxShadow(
                          color: const Color(0x33000000),
                          blurRadius: 20.r,
                          offset: const Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 11),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppIcons.office, height: 24.w),
                          SizedBox(width: 8.w),
                          Text(AppConstants.office,
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    width: 106.w,
                    height: 48.w,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      shadows: [
                        BoxShadow(
                          color: const Color(0x33000000),
                          blurRadius: 20.r,
                          offset: const Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 11),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppIcons.splocation, height: 24.w),
                          SizedBox(width: 8.w),
                          Text(AppConstants.others,
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
          //===========================================================================================================================================
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                   AppConstants.deliveryAdd,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF61656A),
                      fontSize: 12.w,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.w,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 334.w,
                    height: 40.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: AppConstants.loactAdd,
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFB9B9B9),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    AppConstants.contactPerson,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF61656A),
                      fontSize: 12.w,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.w,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 334.w,
                    height: 40.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: AppConstants.debashis,
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFB9B9B9),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    AppConstants.contactPersonNumber,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF61656A),
                      fontSize: 12.w,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.w,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 334.w,
                    height: 40.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: AppConstants.personNumber,
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFB9B9B9),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    AppConstants.sectorApartment,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF61656A),
                      fontSize: 12.w,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.w,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 334.w,
                    height: 40.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
           //============================================================================================================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppConstants.houseNo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF61656A),
                              fontSize: 12.w,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.w,
                            ),
                          ),
                          SizedBox(height: 8.w),
                          Container(
                            width: 144.w,
                            height: 40.w,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFEFECEC),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.r)),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.0.w, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppConstants.floorNo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF61656A),
                              fontSize: 12.w,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.w,
                            ),
                          ),
                          SizedBox(height: 8.w),
                          Container(
                            width: 144.w,
                            height: 40.w,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFEFECEC),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.r)),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.0.w, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 39.h), 
                  //============================================================================================================

                  CustomButtom(title: AppConstants.sAveAdd, onpress: (){}),
                  SizedBox(height: 90.h),
                ],
              )


            ],
          ),
        ),
      ),

    );
  }
}
