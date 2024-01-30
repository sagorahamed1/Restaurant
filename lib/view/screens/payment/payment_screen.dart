import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';
import '../../../utils/app_icons.dart';
import 'InnerWidget/bill_details_card.dart';
import 'InnerWidget/cash_on_delivery.dart';
import 'InnerWidget/paytm_section.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.payment),
        centerTitle: true,
        elevation: 12,
       // leading: const Icon(Icons.arrow_back_ios_outlined),
        // toolbarOpacity: 0.5,
        shadowColor: const Color(0xFFe8e8e8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                                decoration: ShapeDecoration(
                                  shape: OvalBorder(
                                    side: BorderSide(
                                        width: 0.80.w,
                                        color: const Color(0xFF8A8A8A)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text('2',
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
                              Text('3',
                                  style: TextStyle(
                                      fontSize: 12.w,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //====================================> BillDetailsCard Section <============================================================================

              SizedBox(height: 24.w),
              const BillDetailsCard(),
              SizedBox(height: 16.w),

              //====================================> Payment Method Section <============================================================================

              const PaytmSection(),
              SizedBox(height: 16.w),
              const CashOnDelivery(),
              SizedBox(height: 58.w),
              CustomButtom(
                onpress: () {Get.toNamed(AppRoutes.orderSuccesfull);},
                title: AppConstants.placeOrder,
              ),
              SizedBox(height: 80.w),
            ],
          ),
        ),
      ),
    );
  }
}
