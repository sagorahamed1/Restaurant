
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';

import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/two_botton.dart';
import 'inner_widgets/product_container.dart';

class FruitsScreen extends StatelessWidget {
  FruitsScreen({super.key});

  List productContainerList = [
    ProductContainer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----------------------------app bar section----------------------------->
      appBar: AppBar(
        leading: Container(
            padding: const EdgeInsets.all(19),
            child: SvgPicture.asset(AppIcons.backArrow)),
        title: CustomText(
          text: AppConstants.Fruits,
          fontsize: Dimensions.fontSizeExtraLarge,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppIcons.cardIcon))
        ],
      ),

      ///----------------------------body section--------------------------------->
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeLarge,
              vertical: Dimensions.paddingSizeExtraLarge),
          child: Column(
            children: [
              Container(
                height: 40.h,
                width: 335.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x33000000),
                      offset: Offset(0, 0),
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: AppColors.white,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(AppIcons.search),
                      ),
                      hintText: "Search Products",
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
        
              ///--------------------- two botton------------------------->
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TwoBotton(
                      bottonColor: AppColors.red,
                      text: "Products",
                      textColor: AppColors.white),
                  TwoBotton(
                      bottonColor: AppColors.white,
                      text: "Stores",
                      textColor: AppColors.black),
                ],
              ),
        
              SizedBox(
                height: 16.h,
              ),
        
        
              Container(
                  height:395,
                  child: ProductContainer())
            ],
          ),
        ),
      ),
    );
  }
}
