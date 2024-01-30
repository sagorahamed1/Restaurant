import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/view/widgets/custom_input_field.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import '../../../widgets/custom_card.dart';

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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //====================================> Delivery Address Section <============================================================================

            Row(
              children: [
                CustomText(
                    text: AppConstants.deliveryAdd,
                    fontWeight: FontWeight.w600,
                    fontsize: 14.sp),
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
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard(
                  title: AppConstants.home,
                  svgImage: SvgPicture.asset(
                    AppIcons.houseframe,
                    width: 24.w,
                  ),
                ),
                SizedBox(width: 8.w),
                CustomCard(
                  title: AppConstants.office,
                  svgImage: SvgPicture.asset(
                    AppIcons.office,
                    width: 24.w,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
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
                    SvgPicture.asset(AppIcons.location2, height: 24.w),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: AppConstants.others,
                            fontsize: 12.sp,
                            fontWeight: FontWeight.w400),
                        CustomText(
                            text: AppConstants.loactAdd,
                            fontsize: 10.sp,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(AppIcons.edit, height: 24.w),
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
                child: const CustomInputField(
                  title: AppConstants.sectorApartment,
                )),
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
                    child: const CustomInputField(
                      title: AppConstants.houseHint,
                    )),
                SizedBox(width: 8.w),
                Container(
                  width: 144.w,
                  height: 40.w,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEFECEC),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r)),
                  ),
                  child: const CustomInputField(
                    title: AppConstants.floor,
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
