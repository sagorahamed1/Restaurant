import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';

import '../../../../../controller/friuts_controller.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../widgets/custom_text.dart';

class splashDealsSliderContainer extends StatelessWidget {
   splashDealsSliderContainer({super.key});

  FriutsController controller = Get.put(FriutsController());
  RxInt itemQty = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w,top: 2, bottom: 2),
      height: 180.h,
      width: 163.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 0),
            blurRadius: 9,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Dimensions.paddingSizeDefault,
                horizontal: Dimensions.paddingSizeDefault),
            child: Column(
              children: [
                ///--------------------image of product------------------>
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Image.asset(
                    AppImages.vegetables,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),



                ///--------------------fruit name------------>
                Row(
                  children: [
                    CustomText(
                      textAlign: TextAlign.start,
                      maxline: 2,
                      text: AppConstants.buy1KgPotato,
                      fontsize: Dimensions.fontSizeDefault.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),



          Spacer(),
          ///<<<=========================Item Increment Decrement Portion=======================================
          Obx(() => Container(
            height: 37.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.r), bottomRight: Radius.circular(8.r)),
              border: Border.all(color: AppColors.black)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (itemQty.value != 0)
                  GestureDetector(
                    onTap: () {
                      itemQty.value--;
                      print("***************************************,,,,$itemQty");
                    },
                    child: Container(
                        height: 16.h,
                        width: 26.w,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(1.5),
                            color: AppColors.red),
                        child: Center(
                            child: SvgPicture.asset(
                                AppIcons.minusIcon))),
                  ),
                CustomText(
                  text: itemQty.value != 0
                      ? itemQty.toString()
                      : AppConstants.addtocart,
                  fontsize: Dimensions.fontSizeSmall.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                GestureDetector(
                  onTap: () {
                    itemQty.value++;
                    print(
                        "***************************************,,,,$itemQty");
                  },
                  child: Container(
                      height: 16.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.5),
                          color: AppColors.red),
                      child: Center(
                          child:
                          SvgPicture.asset(AppIcons.plusIcon))),
                ),
              ],
            ),
          )
          ),
        ],
      ),
    );
  }
}
