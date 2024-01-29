import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/view/screens/my_kookbags/inner_widgets/personal_offer_container.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class CouponCodeContainer extends StatelessWidget {
  const CouponCodeContainer({
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

      ///------------------------------------------------------///
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.w),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  top: 9.w,
                  bottom: 9.w,
                  text: "Coupon Code",
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w600,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.black),
                  child: const Row(
                    children: [
                      CustomText(
                        top: 8,
                        bottom: 8,
                        left: 6,
                        right: 3,
                        text: "ADD COUPON",
                        fontsize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 24.w,
            ),

            ///-----------------------text field-------------------------->
            Container(
              child: Row(
                children: [
                   Expanded(
                    flex: 9,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your coupon code",
                          hintStyle: TextStyle(
                            fontSize: 14.h
                          ),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              borderSide:
                                  BorderSide(color: AppColors.red, width: 2))),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 65.w,
                      height: 62.w,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                              topRight: Radius.circular(8))),
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: AppColors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 24.w,
            ),

            ///--------------------personal offer container----------------------->
            const PersonalOfferContainer(
              offerBgColor: AppColors.red,
              textColor: AppColors.white,
            ),
            SizedBox(
              height: 16.w,
            ),
            const PersonalOfferContainer(
              offerBgColor: AppColors.white,
              textColor: AppColors.black,
            ),
            SizedBox(
              height: 16.w,
            ),
            const PersonalOfferContainer(
              offerBgColor: AppColors.black,
              textColor: AppColors.white,
            ),

            SizedBox(
              height: 24.w,
            ),

            ElevatedButton(
                onPressed: () {},
                child: CustomText(
                  text: "CHECK OUT",
                  fontsize: Dimensions.fontSizeExtraLarge,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                  top: 5.w,
                  bottom: 5.w,
                )),

            SizedBox(
              height: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
