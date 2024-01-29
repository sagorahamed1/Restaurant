import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';

import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import 'InnerWidget/bill_details_card.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.payment),
        centerTitle: true,
        elevation: 12,
        leading: const Icon(Icons.arrow_back_ios_outlined),
        // toolbarOpacity: 0.5,
        shadowColor: Colors.grey,
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
              SizedBox(height: 24.w),
              const BillDetailsCard(),
              SizedBox(height: 16.w),
              //====================================> Payment Method Section <============================================================================

              Container(
                width: 335.w,
                height: 76.w,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x33000000),
                      blurRadius: 20.w,
                      offset: const Offset(0, 4),
                      spreadRadius: 0.w,
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.w),
                  child: Row(
                    children: [
                      Image.asset(AppImages.paytm),
                      SizedBox(width: 16.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppConstants.paytm,
                            style: TextStyle(
                              color: const Color(0xFF61656A),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.10.w,
                            ),
                          ),
                          SizedBox(
                            height: 15.w,
                          ),
                          Text(
                            AppConstants.payThrough,
                            style: TextStyle(
                              color: const Color(0xFFBFBFBF),
                              fontSize: 10.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.20.w,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(AppIcons.fmframe),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.w),
              Container(
                width: 335.w,
                height: 76.w,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x33000000),
                      blurRadius: 20.w,
                      offset: const Offset(0, 4),
                      spreadRadius: 0.w,
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.w),
                  child: Row(
                    children: [
                      Image.asset(AppImages.cashonDelivery),
                      SizedBox(width: 16.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppConstants.cashOn,
                            style: TextStyle(
                              color: const Color(0xFF61656A),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.10.w,
                            ),
                          ),
                          SizedBox(
                            height: 15.w,
                          ),
                          Text(
                            AppConstants.payYour,
                            style: TextStyle(
                              color: const Color(0xFFBFBFBF),
                              fontSize: 10.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.20.w,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 58.w),
              CustomButtom(
                onpress: () {},
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
