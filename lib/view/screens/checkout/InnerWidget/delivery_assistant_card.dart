import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/view/widgets/custom_input_field.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import '../../../../utils/app_constants.dart';

class DeliveryAssistantCard extends StatelessWidget {
  const DeliveryAssistantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 166.w,
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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                text: AppConstants.tipFor,
                fontsize: 14.sp,
                fontWeight: FontWeight.w600),
            SizedBox(height: 16.h),
            Container(
              width: 303.w,
              height: 40.w,
              decoration: ShapeDecoration(
                color: const Color(0xFFEFECEC),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r)),
              ),
              child: const CustomInputField(
                title: AppConstants.tipHint,
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Container(
                  width: 69.w,
                  height: 40.w,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.w, color: const Color(0xFFe68283)),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  child: Center(
                      child: CustomText(
                          text: '\$10',
                          fontsize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF61656A))),
                ),
                SizedBox(width: 8.w),
                Container(
                  width: 69.w,
                  height: 40.w,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFCD0608),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Center(
                      child: CustomText(
                          text: '\$25',
                          fontsize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFFFFFF))),
                ),
                SizedBox(width: 8.w),
                Container(
                  width: 69.w,
                  height: 40.w,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.w, color: const Color(0xFFe68283)),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  child: Center(
                      child: CustomText(
                          text: '\$30',
                          fontsize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF61656A))),
                ),
                SizedBox(width: 8.w),
                Container(
                  width: 69.w,
                  height: 40.w,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.w, color: const Color(0xFFe68283)),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  child: Center(
                      child: CustomText(
                          text: '\$50',
                          fontsize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF61656A))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
