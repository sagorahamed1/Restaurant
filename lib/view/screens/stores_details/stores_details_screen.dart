import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/dimensions.dart';
import 'inner_widgets/header_fourbotton.dart';
import 'inner_widgets/product_container_widgets.dart';
import 'inner_widgets/stores_container.dart';

class StoresDetailsScreen extends StatelessWidget {
  const StoresDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----------------------------app bar section----------------------------->
      appBar: AppBar(
        toolbarHeight: 61.w,
        leading: GestureDetector(
          onTap: (){
             Get.back();
          },
          child: Container(
              padding: const EdgeInsets.all(19),
              child: SvgPicture.asset(AppIcons.backArrow)),
        ),
        title: TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black45),
                borderRadius: BorderRadius.all(Radius.circular(2))),
            prefixIcon: Padding(
              padding: EdgeInsets.all(15),
              child: Icon(Icons.search_rounded,color: Colors.black26,),
            ),
            hintText: "Search Store",
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppIcons.cardIcon))
        ],
      ),


      ///--------------------------body section--------------------------------------->
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeLarge,
              vertical: Dimensions.paddingSizeExtraLarge),
          child: Column(
            children: [
        
               StoresContainer(),
        
              ///------------------------four botton---------------------------->
        
              SizedBox(height: 24.h,),
              headerFourBotton(),
        
              SizedBox(height: 16.h,),
              Container(
                height: 42.h,
                width: 342.w,
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: AppColors.white20,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppIcons.location2),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.watch),
                        CustomText(text: "   ${AppConstants.daysRemaining} ",fontsize: Dimensions.fontSizeSmall.h, fontWeight: FontWeight.w600,),
                        CustomText(text: AppConstants.min,fontsize: Dimensions.fontSizeExtraSmall.h, fontWeight: FontWeight.w400,)
                      ],
                    ),
        
                    Container(
                      height: 20.w,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(2)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(text: "4.9", fontsize: Dimensions.fontSizeSmall.h,fontWeight: FontWeight.w500,color: AppColors.red,),
                            Icon(Icons.star,color: AppColors.red,size: 12.h,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
        
              SizedBox(height: 16.h,),
        
        
              Container(
                  height: 330.h,
                  child: ProductContainerWidgets()),
        
        
            ],
          ),
        ),
      ),
    );
  }
}
