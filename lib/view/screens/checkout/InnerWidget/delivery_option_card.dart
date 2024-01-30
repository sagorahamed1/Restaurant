import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import '../../../../utils/app_constants.dart';

class DeliveryOptionCard extends StatelessWidget {
  const DeliveryOptionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 110.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
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
        padding:
            const EdgeInsets.only(left: 16, right: 15, top: 16, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                text: AppConstants.deliveryOpt,
                fontWeight: FontWeight.w600,
                fontsize: 14.sp),
            SizedBox(
              height: 11.h,
            ),
            //====================================> Selection Card Section <============================================================================

            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 148.w,
                  height: 48.w,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.w, color: const Color(0xFFCD0608)),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
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
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 8, bottom: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.houseframe, height: 24.w),
                        SizedBox(
                          width: 7.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: AppConstants.hOMEOpt,
                                fontsize: 12.sp,
                                fontWeight: FontWeight.w500),
                            CustomText(text: '(\$5028)', fontsize: 12.sp),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  width: 145.w,
                  height: 48.w,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r)),
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
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 8, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.houseframe, height: 24.w),
                        SizedBox(
                          width: 7.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppConstants.takeOpt,
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '(Free)',
                              style: TextStyle(fontSize: 12.sp),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
