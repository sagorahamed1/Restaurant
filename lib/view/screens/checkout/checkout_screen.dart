import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';
import '../../../utils/app_icons.dart';
import 'InnerWidget/delivery_address_card.dart';
import 'InnerWidget/delivery_assistant_card.dart';
import 'InnerWidget/delivery_option_card.dart';
import 'InnerWidget/delivery_schedule_card.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.checkout),
        centerTitle: true,
        elevation: 12,
        //leading: const Icon(Icons.arrow_back_ios_outlined),
        // toolbarOpacity: 0.5,
        shadowColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 334.w,
                height: 66.w,
                decoration: ShapeDecoration(
                  color: const Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.w, vertical: 10.w),

                  //====================================> Top Section <============================================================================

                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 24.w,
                                height: 24.w,
                                decoration: ShapeDecoration(
                                  shape: OvalBorder(
                                    side: BorderSide(
                                        width: 0.80.w,
                                        color: const Color(0xFF8A8A8A)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text('1',
                                  style: TextStyle(
                                      fontSize: 12.w,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey)),
                            ],
                          ),
                          SizedBox(width: 6.w),
                          Column(
                            children: [
                              Container(
                                width: 88.w,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 0.50.w,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.w),
                            ],
                          ),
                          SizedBox(width: 6.w),
                          Column(
                            children: [
                              Container(
                                width: 24.w,
                                height: 24.w,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(),
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                  AppIcons.vector,
                                )),
                              ),
                              SizedBox(height: 4.h),
                              Text('2',
                                  style: TextStyle(
                                      fontSize: 12.w,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ],
                          ),
                          SizedBox(width: 6.w),
                          Column(
                            children: [
                              Container(
                                width: 88.w,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 0.50.w,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.w),
                            ],
                          ),
                          SizedBox(width: 6.w),
                          Column(
                            children: [
                              Container(
                                width: 24.w,
                                height: 24.w,
                                decoration: ShapeDecoration(
                                  shape: OvalBorder(
                                    side: BorderSide(
                                        width: 0.80.w,
                                        color: const Color(0xFF8A8A8A)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text('3',
                                  style: TextStyle(
                                      fontSize: 12.w,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              //====================================> Delivery Option Section <============================================================================
              const DeliveryOptionCard(),
              SizedBox(
                height: 19.h,
              ),
              //====================================> Delivery Address Section <============================================================================
              const DeliveryAddressCard(),
              SizedBox(
                height: 16.h,
              ),
              //====================================> Delivery Schedule Section <============================================================================
              const DeliveryScheduleCard(),
              SizedBox(
                height: 16.h,
              ),
              //====================================> Delivery Assistant Section <============================================================================
              const DeliveryAssistantCard(),
              SizedBox(height: 32.h),
              CustomButtom(
                title: AppConstants.payNOW,
                onpress: () {Get.toNamed(AppRoutes.addNewAddress);},
              ),
              SizedBox(height: 14.h),
            ],
          ),
        ),
      ),
    );
  }
}
