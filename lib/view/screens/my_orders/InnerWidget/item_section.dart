import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.orderDetailsScreen);
      },
      child: SizedBox(
        height: 110.w,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Row(
            children: [
              SizedBox(
                  height: 109.w,
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
                    Row(
                      children: [
                        CustomText(
                          text: AppConstants.orderId,
                          fontWeight: FontWeight.w500,
                          fontsize: 13.w,
                        ),
                        const Spacer(),
                        CustomText(
                          text: AppConstants.orderIdNum,
                          fontWeight: FontWeight.w500,
                          fontsize: 13.w,
                        ),
                      ],
                    ),
                    SizedBox(height: 5.w),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: AppConstants.time,
                          fontWeight: FontWeight.w500,
                          fontsize: 13.w,
                        ),
                        const Spacer(),
                        SvgPicture.asset(AppIcons.clock,
                            width: 16.w, height: 16.w),
                        SizedBox(width: 4.w),
                        CustomText(
                          text: AppConstants.timeS,
                          fontWeight: FontWeight.w500,
                          fontsize: 12.w,
                        ),
                      ],
                    ),
                    SizedBox(height: 5.w),
                    Row(
                      children: [
                        CustomText(
                          text: AppConstants.deliveryStatus,
                          fontWeight: FontWeight.w500,
                          fontsize: 13.w,
                        ),
                        const Spacer(),
                        Container(
                          width: 83.w,
                          height: 24.w,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEBEBEB),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(AppIcons.dots),
                              SizedBox(width: 5.w),
                              CustomText(
                                text: AppConstants.pending,
                                fontsize: 10.w,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5.w),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 109.w,
                height: 24.w,
                decoration: ShapeDecoration(
                  color: const Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.w)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.round),
                    SizedBox(width: 8.w),
                    CustomText(
                      text: AppConstants.orderTrack,
                      fontsize: 10.w,
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
