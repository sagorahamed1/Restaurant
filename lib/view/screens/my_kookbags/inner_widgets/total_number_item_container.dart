
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class TotalNumberItemContainer extends StatelessWidget {
  const TotalNumberItemContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 20,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),

      ///-----------------------Total number of items----------------->
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.w),
        child: Column(
          children: [
            Container(
              height: 38.w,
              decoration: BoxDecoration(
                color: AppColors.white20,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    top: 9.w,
                    bottom: 9.w,
                    text: "Total number of items",
                    fontsize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w600,
                  ),
                  const CustomText(
                    text: "26",
                    fontsize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.w,),
            ///----------------------------------price and name--------------------------->
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Subtotal",
                      fontsize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        Text("1500 Tk  ",style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w400),),
                        CustomText(
                          text: "445 Tk",
                          fontsize: Dimensions.fontSizeDefault,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 8.w,),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Subtotal",
                      fontsize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        Text("1500 Tk  ",style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w400),),
                        CustomText(
                          text: "445 Tk",
                          fontsize: Dimensions.fontSizeDefault,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),


            SizedBox(height: 8.w,),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Subtotal",
                      fontsize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        Text("1500 Tk  ",style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w400),),
                        CustomText(
                          text: "445 Tk",
                          fontsize: Dimensions.fontSizeDefault,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 16.w,),
            const Divider(color: AppColors.white20,),

            SizedBox(height: 16.w,),

            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Total",
                      fontsize: Dimensions.fontSizeLarge,
                      fontWeight: FontWeight.w600,
                      color: AppColors.red,
                    ),
                    CustomText(
                      text: r"$5,822",
                      fontsize: Dimensions.fontSizeLarge,
                      fontWeight: FontWeight.w600,
                      color: AppColors.red,
                    ),
                  ],
                )
              ],
            ),


            SizedBox(height: 24.w,),
            Container(
              height: 38.w,
              decoration: BoxDecoration(
                color: AppColors.white20,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    top: 9.w,
                    bottom: 9.w,
                    text: "Your total savings",
                    fontsize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w600,
                  ),
                  const CustomText(
                    text: r"$1500",
                    fontsize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w600,
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
