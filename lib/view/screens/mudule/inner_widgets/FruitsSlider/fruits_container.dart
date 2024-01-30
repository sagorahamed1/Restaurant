import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

class FruitsContainerWidget extends StatelessWidget {
  const FruitsContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 88.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///-------------------------------fruits image--------------------------->
          Container(
            width: 85,
            color: Color(0xFF9B9B9B),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: const BoxDecoration(color: AppColors.red),
                    child: CustomText(
                      top: 3,
                      bottom: 3,
                      right: 3,
                      left: 4,
                      text: AppConstants.howManyPercentOff,
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontsize: Dimensions.fontSizeExtraSmall.w,
                    ),
                  ),
                ),
                Image.asset(AppImages.appel)
              ],
            ),
          ),

          Container(
            padding:
                EdgeInsets.only(left: 10, top: 7.w, bottom: 7.w, right: 7.w),
            color: const Color(0xFFECF8FF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///----------------------------------fruits info---------------------->
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: AppConstants.apple,
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontsize: Dimensions.fontSizeExtraSmall.w,
                    ),

                    CustomText(
                      text: AppConstants.digitalStore,
                      color: AppColors.white200,
                      fontWeight: FontWeight.w500,
                      fontsize: Dimensions.fontSizeExtraSmall.w,
                    ),

                    ///------------------------rating-------------------->
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black12,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black12,
                          size: 15,
                        ),
                      ],
                    ),

                    ///price
                    Row(
                      children: [
                        CustomText(
                          text: "${AppConstants.priceMuduleScreen}   ",
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          fontsize: Dimensions.fontSizeSmall.w,
                        ),
                        const Text(
                          AppConstants.ofPriceMuduleScreen,
                          style: TextStyle(
                            color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.fontSizeExtraSmall,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  width: 60.w,
                ),

                ///-------------------------------card increment and decrement---------------------------->
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: AppColors.red),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    CustomText(
                      text: "2",
                      fontsize: 16.w,
                      fontWeight: FontWeight.w600,
                      color: AppColors.red,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: AppColors.red),
                      child: const Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
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
