import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

class SeasonalFruitsContainer extends StatelessWidget {
  const SeasonalFruitsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 15,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ]
      ),
      child: Column(
        children: [
          Image.asset(
            AppImages.mango,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.w,),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///---------------------------------name of the fruits------------------------>
                const CustomText(
                  text: AppConstants.mango,
                  fontsize: Dimensions.fontSizeSmall,
                  fontWeight: FontWeight.w500,
                ),
                Row(
                  children: [
                    ///---------------------------------increment and decrement------------------------>
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: AppColors.red),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),

                     CustomText(
                      left: 5.w,
                      right: 5.w,
                      text: "2",
                      fontsize: Dimensions.fontSizeSmall,
                      fontWeight: FontWeight.w500,
                      color: AppColors.red,
                    ),

                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: AppColors.red),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 13,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),


          ///---------------------price---------------------------->
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "445.00 Tk",
                  fontsize: 10.w,
                  fontWeight: FontWeight.w600,
                ),


                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.red)
                  ),
                  child: Row(
                    children: [
                      CustomText(
                        right: 4,
                        left: 4,
                        text: "4.5",
                        fontsize: 10.w,
                        fontWeight: FontWeight.w600,
                        color: AppColors.red,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 15,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
