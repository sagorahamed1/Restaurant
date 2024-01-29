import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';

import 'InnerWidget/delivery_address_card.dart';
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
        leading: const Icon(Icons.arrow_back_ios_outlined),
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
              Container(
                width: 335.w,
                height: 166.w,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x33000000),
                      blurRadius: 20.r,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              CustomButtom(title: AppConstants.payNOW,onpress: (){},),
              SizedBox(height: 14.h),

            ],
          ),
        ),
      ),
    );
  }
}


