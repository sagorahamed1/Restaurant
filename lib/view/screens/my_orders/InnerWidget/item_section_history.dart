import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';

class ItemSectionHistory extends StatelessWidget {
  const ItemSectionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.orderDetailsScreen);
      },
      child: SizedBox(
        height: 110.h,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Row(
            children: [
              SizedBox(
                  height: 109.h,
                  width: 98.w,
                  child: Image.asset(
                    AppImages.spBaket,
                    fit: BoxFit.fill,
                  )),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 22.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: AppConstants.time,
                          fontWeight: FontWeight.w500,
                          fontsize: 13.sp,
                        ),
                        const Spacer(),
                        SvgPicture.asset(AppIcons.clock,
                            width: 16.w, height: 16.h),
                        SizedBox(width: 4.h),
                        CustomText(
                          text: AppConstants.timeS,
                          fontWeight: FontWeight.w500,
                          fontsize: 12.sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        CustomText(
                          text: AppConstants.deliveryStatus,
                          fontWeight: FontWeight.w500,
                          fontsize: 13.sp,
                        ),
                        const Spacer(),
                        Container(
                          width: 80.w,
                          height: 24.w,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEBEBEB),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: AppConstants.dlivered,
                                fontsize: 10.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5.h),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 99.w,
                height: 24.w,
                decoration: ShapeDecoration(
                  color: const Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: AppConstants.viewDetails,
                      fontsize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
