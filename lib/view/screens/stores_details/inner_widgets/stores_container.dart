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
      margin: EdgeInsets.only(top: 20),
      height: 174.h,
      width: 335.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: AssetImage("${AppImages.potsSlider1}"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 24.h,
              width: 34.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
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
          SizedBox(
            height: 102.h,
          ),

          ///----------------------------stores name location rating------------------>
          Container(
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            height: 48.h,
            width: 335.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                color: AppColors.black),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Grocery Store",
                  textAlign: TextAlign.start,
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
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
                    Container(
                      height: 20.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: AppColors.white,
                          border: Border.all(color: AppColors.red)),
                      child: Center(
                        child: CustomText(
                          text: "storesInfo",
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
