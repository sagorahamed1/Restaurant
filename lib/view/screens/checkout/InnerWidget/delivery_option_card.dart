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
      width: 340.w,
      height: 115.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        shadows: [
          BoxShadow(
            color: const Color(0x33000000),
            blurRadius: 20.w,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding:
        EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                text: AppConstants.deliveryOpt,
                fontWeight: FontWeight.w600,
                fontsize: 14.w),
            SizedBox(
              height: 11.w,
            ),
            //====================================> Selection Card Section <============================================================================

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 152.w,
                  height: 54.w,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.w, color: const Color(0xFFCD0608)),
                      borderRadius: BorderRadius.circular(4.w),
                    ),
                    shadows: [
                      BoxShadow(
                        color: const Color(0x33000000),
                        blurRadius: 20.w,
                        offset: const Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AppIcons.houseframe, height: 24.h,width: 24.w,),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: AppConstants.hOMEOpt,
                                fontsize: 12.w,
                                fontWeight: FontWeight.w500),
                            CustomText(text: '(\$5028)', fontsize: 12.w, fontWeight: FontWeight.w500),
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
                  width: 149.w,
                  height: 54.w,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r)),
                    shadows: [
                      BoxShadow(
                        color: const Color(0x33000000),
                        blurRadius: 20.w,
                        offset: const Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AppIcons.houseframe, height: 24.h, width: 24.w,),
                        SizedBox(
                          width: 7.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text:AppConstants.takeOpt,
                                  fontsize: 12.w, fontWeight: FontWeight.w500),
                            CustomText(
                             text: '(Free)',
                              fontsize: 12.w)
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
