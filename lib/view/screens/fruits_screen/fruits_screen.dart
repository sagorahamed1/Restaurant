
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/view/screens/stores/stores_screen.dart';

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
        elevation: 12,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Container(
              padding: const EdgeInsets.all(19),
              child: SvgPicture.asset(AppIcons.backArrow)),
        ),
        title: const CustomText(
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
        scrollDirection: Axis.vertical,
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
                      fillColor: AppColors.white,
                      // focusColor: AppColors.white,
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
                    route: AppRoutes.storesScreen,
                      bottonColor: AppColors.white,
                      text: "Stores",
                      textColor: AppColors.black),
                ],
              ),
        
              SizedBox(
                height: 16.h,
              ),
        
        
              Container(
                  height:MediaQuery.of(context).size.height,
                  child: ProductContainer())
            ],
          ),
        ),
      ),
    );
  }
}
