import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

import 'inner_widgets/kookbage_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeLarge,
            vertical: Dimensions.paddingSizeExtraLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Row(
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

class FeaturedProductsContainer extends StatelessWidget {
  const FeaturedProductsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193.h,
      width: 163.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 0),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.paddingSizeDefault,
            horizontal: Dimensions.paddingSizeDefault),
        child: Column(
          children: [
            ///-----------discound and favorite------------->
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DiscoundContainer(),
                Container(
                  padding: EdgeInsets.all(5),
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.white10),
                    child: SvgPicture.asset(
                      AppIcons.loveRed,
                      color: Colors.red,fit: BoxFit.contain,
                    ))
              ],
            ),

            ///--------------------image of product------------------>
            Container(
              height: 78.w,
              width: 78.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Image.asset(AppImages.tomato),
            ),

            ///--------------------product name and price section------------>
            Row(
              children: [
                CustomText(
                  text: AppConstants.Tomato,
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                CustomText(
                  text: AppConstants.kgWeight,
                  fontsize: Dimensions.fontSizeExtraSmall,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ],
            ),
            Row(
              children: [
                CustomText(
                  text: AppConstants.price,
                  fontsize: Dimensions.fontSizeSmall,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                CustomText(
                  text: AppConstants.offprice,
                  fontsize: Dimensions.fontSizeExtraSmall,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 12,
                ),
                Icon(Icons.star, color: Colors.red, size: 12),
                Icon(Icons.star, color: Colors.red, size: 12),
                Icon(Icons.star, color: Colors.black26, size: 12),
                Icon(Icons.star, color: Colors.black26, size: 12),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DiscoundContainer extends StatelessWidget {
  const DiscoundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 56.w,
      decoration: BoxDecoration(
        color: AppColors.red,
        borderRadius: BorderRadius.circular(3.r),
      ),
      child: Center(
        child: CustomText(
          text: AppConstants.Off30Discound,
          fontsize: Dimensions.fontSizeSmall,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
      ),
    );
  }
}

class CetegoryContainer extends StatelessWidget {
  final String? imagepath;
  final Color? imageBgColor;
  final String? text;

  const CetegoryContainer({this.imageBgColor, this.imagepath, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.h,
      width: 106.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 0),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 22.h,
            left: 16.w,
            child: Container(
              height: 82.h,
              width: 82.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: imageBgColor,
              ),
            ),
          ),
          Positioned(top: 3.h, left: 9.w, child: Image.asset("$imagepath")),
          Positioned(
              bottom: 12.h,
              left: 21.w,
              child: CustomText(
                text: text,
                textAlign: TextAlign.center,
                maxline: 2,
                fontWeight: FontWeight.w500,
                fontsize: Dimensions.fontSizeDefault,
              ))
        ],
      ),
    );
  }
}
