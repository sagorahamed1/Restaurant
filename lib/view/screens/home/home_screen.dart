import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/screens/home/inner_widgets/kookbags-trivia_slider.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

import 'inner_widgets/cetegory_container.dart';
import 'inner_widgets/featured_products_container.dart';
import 'inner_widgets/header_slider.dart';
import 'inner_widgets/kookbage_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 61.w,
        leading: Container(
            padding : EdgeInsets.only(left: 20.w),
            child: SvgPicture.asset(AppIcons.location)),
        
        title: Container(
          height: 29.w,
          child: Image.asset(AppImages.kookbagsLogo),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Container(
              padding: EdgeInsets.only(right: 20),
              child: SvgPicture.asset(AppIcons.notificationBell)))
        ],
      ),
      ///---------------------body section------------------------------------->


        body: SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.paddingSizeExtraLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///-----------------------------header slider------------------------------->
            HeaderSlider(),
            SizedBox(height: 24.h,),
            ///---------------------------shop by cetegory----------------------->
             CustomText(
              left: 20,
              bottom: 16.h,
              text: AppConstants.shopByCetegory,
              color: AppColors.black100,
              fontsize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
            ),


            ///<-----------------cetegory container-------------------->
             Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge.h),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CetegoryContainer(
                      imageBgColor: AppColors.amber,
                      imagepath: AppImages.fruitsVegetables,
                      text: AppConstants.fruitsVegetabes),
                  CetegoryContainer(
                      imageBgColor: AppColors.grey,
                      imagepath: AppImages.fruitsVegetables,
                      text: AppConstants.chickenMutton),
                  CetegoryContainer(
                      imageBgColor: AppColors.amber,
                      imagepath: AppImages.fruitsVegetables,
                      text: AppConstants.fruitsVegetabes),
                ],
              ),
            ),


             ///---------------------------------kook bage deals---------------------------->
             CustomText(
              top: 20.h,
              left: 20,
              bottom: 16.h,
              textAlign: TextAlign.start,
              text: AppConstants.kookbagsDeals,
              fontsize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
            ),

            ///<----------------kook bags deals slider------------------->
            KookbagsSlider(),


            ///-------------------kook bags trivia----------------->
             CustomText(
              left: 20,
              bottom: 24.h,
              top: 24.h,
              textAlign: TextAlign.start,
              text: AppConstants.kookbagsTrivia,
              fontsize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
            ),

            ///-------------------kook bags trivia slider------------------->
            KookbagsTriviaSlider(),

            SizedBox(
              height: 24.h,
            ),

             CustomText(
              top: 24.h,
              bottom: 24.h,
              left: 20,
              textAlign: TextAlign.start,
              text: AppConstants.featuredProducts,
              fontsize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
            ),


            const Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeaturedProductsContainer(),
                  FeaturedProductsContainer(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

