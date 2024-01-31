import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../my_kookbags/inner_widgets/card_items.dart';
import 'InnerWidget/cancel_button.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //================================================> Order Section <==============================================

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomText(
                  text: AppConstants.orderId,
                  fontsize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: AppConstants.orderIdNum,
                  fontsize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ]),
              SizedBox(height: 16.h),
              Row(children: [
                CustomText(
                  text: AppConstants.time,
                  fontsize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                const Spacer(),
                SvgPicture.asset(AppIcons.clock),
                SizedBox(width: 8.w),
                CustomText(
                  text: AppConstants.timeS,
                  fontsize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ]),
              SizedBox(height: 16.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomText(
                  text: AppConstants.paymentMode,
                  fontsize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                Container(
                  width: 128.w,
                  height: 28.w,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEBEBEB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Center(
                    child: CustomText(
                      text: AppConstants.cashOn,
                      fontWeight: FontWeight.w400,
                      fontsize: 12.sp,
                    ),
                  ),
                )
              ]),
              SizedBox(height: 16.h),
              const Divider(),
              SizedBox(height: 16.h),
              Row(children: [
                CustomText(
                  text: AppConstants.deliveryStatus,
                  fontsize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                const Spacer(),
                SvgPicture.asset(AppIcons.dots),
                SizedBox(width: 10.w),
                CustomText(
                  text: AppConstants.pending,
                  fontsize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ]),
              SizedBox(height: 16.h),
              const Divider(),
              //================================================> Item Card Section <==============================================

              SizedBox(height: 16.h),
              Stack(children: [
                Row(
                  children: [
                    Image.asset(AppImages.spBaket, width: 92.w, height: 88.w),
                    SizedBox(width: 16.w),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppConstants.cauliflower,
                            fontsize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              Text(
                                '1800.00 TK',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                '1500.00 TK',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'Variation : 1Kg',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ],
                ),
                Positioned(
                    top: 1,
                    right: 1,
                    child: Container(
                      width: 83.w,
                      height: 24.w,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEBEBEB),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Center(
                          child: CustomText(
                        text: 'Quantity : 01',
                        fontsize: 10.sp,
                        fontWeight: FontWeight.w500,
                      )),
                    ))
              ]),
              SizedBox(height: 16.h),
              const Divider(),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Image.asset(AppImages.spBaket, width: 92.w, height: 88.w),
                  SizedBox(width: 16.w),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: AppConstants.groceryStore,
                          fontsize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 4.h),
                        CustomText(
                          text: AppConstants.eastDhanmondi,
                          fontsize: 11.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 10.h),
                        Image.asset(AppImages.sprivew,
                            width: 104.464.w, height: 13.w),
                      ]),
                  const Spacer(),
                  Image.asset(AppImages.spcallicon),
                ],
              ),
              SizedBox(height: 16.h),
              const Divider(),
              SizedBox(height: 16.h),
              //================================================> Details Section <==============================================
              CustomText(
                text: AppConstants.details,
                fontsize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 16.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomText(
                  text: AppConstants.priceItem,
                  fontsize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: AppConstants.nineFour,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ]),
              SizedBox(height: 8.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomText(
                  text: AppConstants.discount,
                  fontsize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: AppConstants.disCountPrise,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ]),
              SizedBox(height: 8.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomText(
                  text: AppConstants.vatTax,
                  fontsize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: AppConstants.nineFour,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ]),
              SizedBox(height: 8.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomText(
                  text: AppConstants.deliveryFee,
                  fontsize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: AppConstants.nineFour,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ]),
              SizedBox(height: 16.h),
              const Divider(),
              //========================================================================================================
              SizedBox(height: 10.h),
              //================================================> Total Section <==============================================
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomText(
                  text: AppConstants.total,
                  fontsize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: AppConstants.totalPrise,
                  fontsize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ]),
              SizedBox(height: 40.h),
              CustomButtom(
                title: AppConstants.tRACKOrders,
                onpress: () {},
              ),
              SizedBox(height: 16.h),
              const CancelButton(),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
