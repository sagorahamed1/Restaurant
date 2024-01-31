import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import 'inner_widgets/fruits_container_widget.dart';
import 'inner_widgets/suggestion_fruit_container.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///------------------------------app bar seation------------------------->
      appBar: AppBar(
        elevation: 1,
        bottomOpacity: 2,
        leading: Container(
            padding : EdgeInsets.only(left: 20.w,top: 16.w,bottom: 16.w),
            child: SvgPicture.asset(AppIcons.backArrow)),

        title: Container(
          height: 29.h,

          child: Image.asset(AppImages.kookbagsLogo),
        ),
      ),


      ///------------------------------body seation----------------------------->
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 20.w,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              ///-------------------search feild--------------------->]
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 20,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ]
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.search_rounded,color: Colors.black45,),
                    fillColor: AppColors.white,
                    hintText: "Search Products/Stores",
                    border: InputBorder.none
                  ),
                ),
              ),
        
        
              SizedBox(height: 16.w,),
        
        
              ///------------------------fruits container widgets--------------------------->
              const fruitsContainerWidget(),
              SizedBox(height: 8.w,),
              const fruitsContainerWidget(),
        
        
              SizedBox(height: 45.w,),
              ///------------------------fruits container widgets--------------------------->
              const CustomText(text: "History",fontsize: Dimensions.fontSizeExtraLarge,fontWeight: FontWeight.w600,),
        
        
              const CustomText(text: AppConstants.deshiOnion,fontsize: Dimensions.fontSizeExtraLarge,fontWeight: FontWeight.w400,color: Colors.black45,top: 5,),
              const CustomText(text: AppConstants.deshiOnion,fontsize: Dimensions.fontSizeExtraLarge,fontWeight: FontWeight.w400,color: Colors.black45,top: 5,),
        
              SizedBox(height: 22.w,),
              ///------------------------fruits container widgets--------------------------->
              const CustomText(text: "Suggestion",fontsize: Dimensions.fontSizeExtraLarge,fontWeight: FontWeight.w600,),
              SizedBox(height: 15.w,),
        
        
              ///-----------------------------fruits container------------------------------>
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SuggestionFruitContainer(),
                  SuggestionFruitContainer(),
                ],
              ),
              SizedBox(height: 15.w,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SuggestionFruitContainer(),
                  SuggestionFruitContainer(),
                ],
              )
        
            ],
          ),
        ),
      ),
    );
  }
}

