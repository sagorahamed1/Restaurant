import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/view/widgets/two_botton.dart';

import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_text.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.orderDetails),
        centerTitle: true,
        elevation: 12,
        // leading: const Icon(Icons.arrow_back_ios_outlined),
        // toolbarOpacity: 0.5,
        shadowColor: const Color(0xFFe8e8e8),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const TwoBotton(
                  textColor: Colors.white,
                  text: AppConstants.running,
                  bottonColor: Color(0xFFCD0608),
                ),
                SizedBox(width: 8.w),
                const TwoBotton(
                  textColor: Colors.black,
                  text: AppConstants.history,
                  bottonColor: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            const Divider(color: Color(0xFFf3cccd)),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      margin: EdgeInsets.only(right: 15.w),
                      child: Image.asset(AppImages.spBaket,
                          width: 98.w, height: 109.w)),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: AppConstants.orderId,
                                    fontsize: 13.w,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ]),
                            SizedBox(height: 9.h),
                            CustomText(
                              text: AppConstants.time,
                              fontsize: 13.w,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 9.h),
                            CustomText(
                              text: AppConstants.deliveryStatus,
                              fontsize: 13.w,
                              fontWeight: FontWeight.w500,
                            ),
                          ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomText(
                            textAlign: TextAlign.right,
                            text: AppConstants.orderIdNum,
                            fontsize: 12.w,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 10.w),
                          Row(
                            children: [
                              SvgPicture.asset(AppIcons.clock),
                              SizedBox(width: 4.w),
                              CustomText(
                                textAlign: TextAlign.right,
                                text: AppConstants.timeS,
                                fontsize: 12.w,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Container(
                            width: 83.w,
                            height: 24.w,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFEBEBEB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppIcons.dots),
                                  SizedBox(width: 4.w),
                                  CustomText(
                                    text: AppConstants.pending,
                                    fontsize: 10.w,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8.w,),
        //==================================================================================================================
                          Container(
                            width: 91.w,
                            height: 24.w,
                            decoration: ShapeDecoration(
                              color: Color(0xFF353535),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
