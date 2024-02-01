import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/view/screens/mudule/inner_widgets/cetegory_container.dart';
import 'package:restaurent_kookbags/view/screens/mudule/inner_widgets/header_slider_widgets.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/custom_text.dart';
import '../fruits_screen/inner_widgets/product_container.dart';
import 'inner_widgets/FruitsSlider/fruits_container_slider.dart';
import 'inner_widgets/kookbags_combos.dart';
import 'inner_widgets/SplashDealsSlider/splash_deals_slider.dart';
import 'inner_widgets/SplashDealsSlider/splash_deals_slider_container.dart';
import 'inner_widgets/seasonal_fruits_container.dart';

class MuduleScreen extends StatelessWidget {
  const MuduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///-----------------------------app bar section------------------------->
      appBar: AppBar(
        elevation: 12,
        leading: Container(
            padding : EdgeInsets.all(17),
            child: SvgPicture.asset(AppIcons.addToCardIcon),height: 8.h,width: 8.h,),

        title: Container(
          height: 29.h,

          child: Image.asset(AppImages.kookbagsLogo),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Container(
              padding: const EdgeInsets.only(right: 20),
              child: SvgPicture.asset(AppIcons.notificationBell)))
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h,),
            ///--------------------------------header slider----------------------------->
            HeaderSliderWidgets(),

            ///----------------------cetegory text------------------------------->
            SizedBox(height: 20.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///------------------------------Splash Deals and view all text===========================>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        bottom: 20.w,
                        text: AppConstants.categories,
                        fontWeight: FontWeight.w600,
                        fontsize: Dimensions.fontSizeLarge.h,
                        color: AppColors.black,
                      ),

                      CustomText(
                        bottom: 20.w,
                        text: AppConstants.viewAll,
                        fontWeight: FontWeight.w500,
                        fontsize: Dimensions.fontSizeSmall.h,
                        color: AppColors.red,
                      ),
                    ],
                  ),


                  ///-------------------------cetegory container------------------------->
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CetegoryContainer(),
                      CetegoryContainer(),
                      CetegoryContainer(),
                    ],
                  ),


                  ///--------------------------splash deals text--------------------------------->
                  CustomText(
                    textAlign: TextAlign.start,
                    top: 16.w,
                    bottom: 6.w,
                    text: AppConstants.splashDeals,
                    fontWeight: FontWeight.w600,
                    fontsize: Dimensions.fontSizeExtraLarge.h,
                    color: AppColors.black,
                  ),

                  CustomText(
                    textAlign: TextAlign.start,
                    bottom: 20.w,
                    text: AppConstants.only1unit,
                    fontWeight: FontWeight.w400,
                    fontsize: Dimensions.fontSizeSmall.h,
                    color: AppColors.black,
                  ),


                  ///--------------------------------Splash Deals slider----------------------------->
                  SplashDealsSlider(),


                  ///------------------------------Kookbags Combos and view all text===========================>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: CustomText(
                          top: 16.w,
                          bottom: 20.w,
                          text: AppConstants.kookbagsCombos,
                          fontWeight: FontWeight.w600,
                          fontsize: Dimensions.fontSizeLarge.h,
                          color: AppColors.black,
                        ),
                      ),

                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.viewAll,
                        fontWeight: FontWeight.w500,
                        fontsize: Dimensions.fontSizeSmall.h,
                        color: AppColors.red,
                      ),
                    ],
                  ),


                  Container(
                      height: 240.w,
                      child: KookbagsCombos()),



                  ///------------------------------Fruits and view all text===========================>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.fruits,
                        fontWeight: FontWeight.w600,
                        fontsize: Dimensions.fontSizeLarge.h,
                        color: AppColors.black,
                      ),

                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.viewAll,
                        fontWeight: FontWeight.w500,
                        fontsize: Dimensions.fontSizeSmall.h,
                        color: AppColors.red,
                      ),
                    ],
                  ),


                  Container(
                    height: 89.w,
                    child: FruitsContainerSlider(),
                  ),



                  ///------------------------------Seasonal and view all text===========================>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.seasonal,
                        fontWeight: FontWeight.w600,
                        fontsize: Dimensions.fontSizeLarge.h,
                        color: AppColors.black,
                      ),

                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.viewAll,
                        fontWeight: FontWeight.w500,
                        fontsize: Dimensions.fontSizeSmall.h,
                        color: AppColors.red,
                      ),
                    ],
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SeasonalFruitsContainer(),
                      SeasonalFruitsContainer(),
                    ],
                  ),





                  ///------------------------------Vegetables and view all text===========================>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.vegetables,
                        fontWeight: FontWeight.w600,
                        fontsize: Dimensions.fontSizeLarge.h,
                        color: AppColors.black,
                      ),

                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.viewAll,
                        fontWeight: FontWeight.w500,
                        fontsize: Dimensions.fontSizeSmall.h,
                        color: AppColors.red,
                      ),
                    ],
                  ),


                  Container(
                    height: 89.w,
                    child: FruitsContainerSlider(),
                  ),





                  ///------------------------------Vegetables and view all text===========================>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.exotic,
                        fontWeight: FontWeight.w600,
                        fontsize: Dimensions.fontSizeLarge.h,
                        color: AppColors.black,
                      ),

                      CustomText(
                        top: 16.w,
                        bottom: 20.w,
                        text: AppConstants.viewAll,
                        fontWeight: FontWeight.w500,
                        fontsize: Dimensions.fontSizeSmall.h,
                        color: AppColors.red,
                      ),
                    ],
                  ),


                  Container(
                      height: 240.w,
                      child: KookbagsCombos()),


                ],
              ),
            ),



            SizedBox(height: 10.w,),

          ],
        ),
      ),
    );
  }
}
