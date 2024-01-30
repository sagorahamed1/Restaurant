import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';

class OrderSuccesfull extends StatelessWidget {
  const OrderSuccesfull({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFfff4f4),
        body: Column(
          children: [
            //==============================================> Order Success Section <==================================================

            Container(
              height: 320.w,
              width: 532.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.topBgKook), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  SizedBox(height: 120.h),
                  SizedBox(
                      width: 72.w,
                      height: 83.6.h,
                      child: Image.asset(AppImages.kookBag)),
                  SizedBox(height: 12.36.h),
                  Text(
                    'Your order was \nsuccesfull !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF353535),
                      fontSize: 18.w,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.07,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: 292.w,
                    child: Text(
                      AppConstants.weStartOur,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF61656A),
                        fontSize: 14.w,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.h,
                        letterSpacing: 0.36.w,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
            //==============================================> GiftBox Section <==================================================
            Container(
              height: 320.w,
              width: 532.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.bgKook), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  SizedBox(
                      width: 120.w,
                      height: 122.h,
                      child: Image.asset(AppImages.giftBox)),
                  SizedBox(height: 12.w),
                  SizedBox(
                    width: 292.w,
                    child: Text(
                      AppConstants.youHaveEarned,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF61656A),
                        fontSize: 14.w,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.w,
                        letterSpacing: 0.36.w,
                      ),
                    ),
                  ),
                  SizedBox(height: 63.w),
                  CustomButtom(
                    onpress: () {},
                    title: AppConstants.tRACKORDER,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
