import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Text(
              AppConstants.tipFor,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16.h),
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
                  hintText: AppConstants.tipHint,
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
                      child: Text(
                    '\$10',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF61656A)),
                  )),
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
                      child: Text(
                    '\$25',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFFFFFFF)),
                  )),
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
                      child: Text(
                    '\$30',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF61656A)),
                  )),
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
                      child: Text(
                    '\$50',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF61656A)),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
