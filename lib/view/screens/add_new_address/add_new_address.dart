import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/view/widgets/custom_buttom.dart';

import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_card.dart';
import '../../widgets/custom_input_field.dart';
import '../../widgets/input_text.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.addNewAddress),
        centerTitle: true,
        elevation: 12,
        leading: const Icon(Icons.arrow_back_ios_outlined),
        // toolbarOpacity: 0.5,
        shadowColor: const Color(0xFFe8e8e8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.w),
          child: Column(
            children: [
              Container(
                width: 334.w,
                height: 155.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.gMap),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 12.w),
              InputText(
                title: AppConstants.addTheLocation,
                color: const Color(0xFFCD0608),
                fontsize: 10.w,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 24.h),
              //=============================================> CustomCard Section ========================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    title: AppConstants.home,
                    svgImage: SvgPicture.asset(
                      AppIcons.houseframe,
                      height: 24.w,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  CustomCard(
                    title: AppConstants.office,
                    svgImage: SvgPicture.asset(
                      AppIcons.office,
                      height: 24.w,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  CustomCard(
                    title: AppConstants.others,
                    svgImage: SvgPicture.asset(
                      AppIcons.splocation,
                      height: 24.w,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              //===========================================================================================================================================
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InputText(
                    title: AppConstants.deliveryAdd,
                    fontsize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF61656A),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 334.w,
                    height: 40.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: const CustomInputField(title: AppConstants.loactAdd),
                  ),
                  SizedBox(height: 16.h),
                  InputText(
                    title: AppConstants.contactPerson,
                    fontsize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF61656A),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 334.w,
                    height: 40.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: const CustomInputField(title: AppConstants.debashis),
                  ),
                  SizedBox(height: 16.h),
                  InputText(
                    title: AppConstants.contactPersonNumber,
                    fontsize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF61656A),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 334.w,
                    height: 40.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: const CustomInputField(
                        title: AppConstants.personNumber),
                  ),
                  SizedBox(height: 16.h),
                  InputText(
                    title: AppConstants.sectorApartment,
                    fontsize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF61656A),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 334.w,
                    height: 40.w,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: const CustomInputField(),
                  ),
                  SizedBox(height: 16.h),
                  //============================================================================================================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputText(
                            title: AppConstants.houseNo,
                            fontsize: 12.w,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF61656A),
                          ),
                          SizedBox(height: 8.w),
                          Container(
                            width: 144.w,
                            height: 40.w,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFEFECEC),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.r)),
                            ),
                            child: const CustomInputField(),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputText(
                            title: AppConstants.floorNo,
                            fontsize: 12.w,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF61656A),
                          ),
                          SizedBox(height: 8.w),
                          Container(
                            width: 144.w,
                            height: 40.w,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFEFECEC),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.r)),
                            ),
                            child: const CustomInputField(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 39.h),
                  //============================================================================================================

                  CustomButtom(title: AppConstants.sAveAdd, onpress: () {}),
                  SizedBox(height: 90.h),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
