import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';

class DeliveryAddressCard extends StatelessWidget {
  const DeliveryAddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 294.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //====================================> Delivery Address Section <============================================================================

            Row(
              children: [
                Text(
                  AppConstants.deliveryAdd,
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
                ),
                const Spacer(),
                Container(
                  width: 16.w,
                  height: 16.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: Center(
                    child: Image.asset(AppImages.pluse),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
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
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: 303.w,
              height: 49.w,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side:
                      BorderSide(width: 0.50.w, color: const Color(0xFFFFCACB)),
                  borderRadius: BorderRadius.circular(4),
                ),
                shadows: [
                  BoxShadow(
                    color: const Color(0xFFFFFFFF),
                    blurRadius: 20.r,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.location2,height: 24.w),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppConstants.others,
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          AppConstants.loactAdd,
                          style: TextStyle(
                              fontSize: 10.sp, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(AppIcons.edit,height: 24.w),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),

            //====================================> Location TextFormField Section <============================================================================

            Container(
              width: 303.w,
              height: 40.w,
              decoration: ShapeDecoration(
                color: const Color(0xFFEFECEC),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: AppConstants.sectorHint,
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
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                      hintText: AppConstants.houseHint,
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
                SizedBox(width: 8.w),
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
                      hintText: AppConstants.floor,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
