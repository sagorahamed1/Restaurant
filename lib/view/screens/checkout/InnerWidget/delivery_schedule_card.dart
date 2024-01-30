import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_constants.dart';
import '../../../widgets/input_text.dart';

class DeliveryScheduleCard extends StatelessWidget {
  const DeliveryScheduleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 137.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: [
          BoxShadow(
            color: const Color(0x33000000),
            blurRadius: 20.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConstants.deliverySch,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12.h),
            //====================================> Schedule Day Section <============================================================================

            Row(children: [
              Container(
                width: 88.w,
                height: 32.w,
                decoration: ShapeDecoration(
                  color: const Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r)),
                ),
                child: Center(
                    child: InputText(
                      title: AppConstants.today,
                      fontsize: 12.w,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    )),
              ),
              SizedBox(width: 8.w),
              Container(
                  width: 88.w,
                  height: 32.w,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 0.50.w, color: const Color(0xFF9B9B9B)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Center(
                      child: InputText(
                    title: AppConstants.tomorrow,
                    fontsize: 12.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  )))
            ]),
            SizedBox(height: 12.h),

            //====================================> Schedule Time Section <============================================================================

            Row(
              children: [
                Container(
                    width: 146.w,
                    height: 32.w,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50.w, color: const Color(0xFF9B9B9B)),
                            borderRadius: BorderRadius.circular(4.r))),
                    child: Center(
                        child: InputText(
                            title: AppConstants.todayTime,
                            fontsize: 12.w,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey))),
                SizedBox(width: 8.w),
                Container(
                    width: 146.w,
                    height: 32.w,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50.w, color: const Color(0xFF9B9B9B)),
                            borderRadius: BorderRadius.circular(4.r))),
                    child: Center(
                        child: InputText(
                            title: AppConstants.tomorrowTime,
                            fontsize: 12.w,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
