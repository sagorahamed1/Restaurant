import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
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
        leading: Container(
            margin: EdgeInsets.only(left: 20.w),
            child: SvgPicture.asset(AppIcons.location)),
        
        title: Container(
          height: 29.h,
          width: 107.w,
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
            horizontal: Dimensions.paddingSizeLarge,
            vertical: Dimensions.paddingSizeExtraLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///-----------------------------header slider------------------------------->
            HeaderSlider(),
            SizedBox(height: 24.h,),
            CustomText(
              text: AppConstants.shopByCetegory,
              color: AppColors.black100,
              fontsize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
            ),

            SizedBox(
              height: 16.h,
            ),

            ///<-----------------cetegory container-------------------->
            const Row(
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

            SizedBox(
              height: 24.h,
            ),

            CustomText(
              textAlign: TextAlign.start,
              text: AppConstants.kookbagsDeals,
              fontsize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
            ),

            SizedBox(
              height: 16.h,
            ),

            ///<----------------kook bags slider------------------->
            KookbagsSlider(),

            SizedBox(
              height: 24.h,
            ),

            CustomText(
              textAlign: TextAlign.start,
              text: AppConstants.kookbagsTrivia,
              fontsize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
            ),

            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.green,
              child: Text("Slider"),
            ),

            SizedBox(
              height: 24.h,
            ),

            CustomText(
              textAlign: TextAlign.start,
              text: AppConstants.featuredProducts,
              fontsize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
            ),

            SizedBox(
              height: 24.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeaturedProductsContainer(),
                FeaturedProductsContainer(),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

