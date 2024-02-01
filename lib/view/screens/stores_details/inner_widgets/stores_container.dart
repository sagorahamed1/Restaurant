import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class StoresContainer extends StatelessWidget {
  const StoresContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 174.h,
      width: 335.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              image: AssetImage("${AppImages.potsSlider1}"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 15.w,top: 10.h),
              height: 24.h,
              width: 34.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.red),
              child: Center(
                  child: SvgPicture.asset(
                AppIcons.loveRed,
                color: Colors.white,
                height: 15.h,
                width: 15.w,
              )),
            ),
          ),


          Spacer(),

          ///----------------------------stores name location rating------------------>
          Container(
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            width: 335.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                color: AppColors.black),
            child: Row(
              children: [

                Container(
                  margin: EdgeInsets.only(left: 10.w,right: 10.w),
                  height: 35.h,
                  width: 38.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.r),
                  ),
                  child: SvgPicture.asset(AppIcons.cardIcondetailspage),
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Grocery Store",
                          textAlign: TextAlign.start,
                          fontsize: Dimensions.fontSizeDefault,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),

                        CustomText(
                          text: "Min Order",
                          fontsize: Dimensions.fontSizeSmall,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "128/1 East Dhanmondi",
                          fontsize: Dimensions.fontSizeDefault,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),


                        CustomText(
                          text: r"$500",
                          fontsize: Dimensions.fontSizeDefault,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
