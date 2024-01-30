import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';

class PaytmSection extends StatelessWidget {
  const PaytmSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 76.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: [
          BoxShadow(
            color: const Color(0x33000000),
            blurRadius: 20.w,
            offset: const Offset(0, 4),
            spreadRadius: 0.w,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.w),
        child: Row(
          children: [
            Image.asset(AppImages.paytm),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppConstants.paytm,
                  style: TextStyle(
                    color: const Color(0xFF61656A),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.10.w,
                  ),
                ),
                SizedBox(
                  height: 15.w,
                ),
                Text(
                  AppConstants.payThrough,
                  style: TextStyle(
                    color: const Color(0xFFBFBFBF),
                    fontSize: 10.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.20.w,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SvgPicture.asset(AppIcons.fmframe),
          ],
        ),
      ),
    );
  }
}
