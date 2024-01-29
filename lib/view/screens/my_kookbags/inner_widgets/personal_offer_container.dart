import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';

class PersonalOfferContainer extends StatelessWidget {
  final Color? offerBgColor;
  final Color? textColor;

  const PersonalOfferContainer({this.offerBgColor, this.textColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.white,
          border: Border.all(color: AppColors.red, width: 2)),
      child: Row(
        children: [
          Expanded(
            flex: 1,

            ///----------------------------offer Contaier 10 %------------------------->
            child: Container(
              margin: EdgeInsets.only(right: 10.w),
              height: 105.w,
              decoration: BoxDecoration(
                color: offerBgColor,
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: "10",
                        fontsize: 34.w,
                        fontWeight: FontWeight.w700,
                        color: textColor ?? Colors.white),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "%",
                          fontsize: 14.w,
                          fontWeight: FontWeight.w700,
                          color: textColor ?? Colors.white,
                          top: 30.w,
                        ),
                        CustomText(
                          text: " off",
                          fontsize: 14.w,
                          fontWeight: FontWeight.w700,
                          color: textColor ?? Colors.white,
                          bottom: 5.w,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Personal offer ",
                        fontsize: 11.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                        top: 8.w,
                      ),
                      CustomText(
                        text: "mypromocode2020 ",
                        fontsize: 10.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        top: 16.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomText(
                            text: "6 days remaining ",
                            fontsize: 10.w,
                            fontWeight: FontWeight.w400,
                            color: AppColors.red,
                            top: 16.w,
                          ),

                          ///------------------------------------------apply botton------------------------------------->
                          Container(
                            margin: EdgeInsets.only(left: 30.w),
                            // alignment: Alignment.bottomRight,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: AppColors.black),
                            child: Center(
                              child: CustomText(
                                text: "Apply",
                                fontsize: 10.w,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white,
                                left: 12.w,
                                right: 12.w,
                                top: 4.w,
                                bottom: 4.w,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
