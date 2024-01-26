import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HeaderSlider extends StatefulWidget {
  HeaderSlider({super.key});

  @override
  State<HeaderSlider> createState() => _HeaderSliderState();
}

class _HeaderSliderState extends State<HeaderSlider> {
  int currentIndex = 0;

  CarouselController _carouselController = CarouselController();

  List<String> images = [
    "${AppImages.headerSlider1}",
    "${AppImages.headerSlider2}",
    "${AppImages.headerSlider1}",
    "${AppImages.headerSlider2}",
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _carouselController,
          itemCount: images.length,
          options: CarouselOptions(
            autoPlay: true,
            // height: 88,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            aspectRatio: 1.3.w,
            autoPlayAnimationDuration: Duration(seconds: 1),
            reverse: false,
          ),
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: EdgeInsets.only(right: 50),
              height: 172.h,
              width: 333.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(images[index],),fit: BoxFit.cover
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
              ),

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 16.h,),
                    Container(
                      height: 34.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: AppColors.redAccent,
                      ),
                      child: Center(
                        child: CustomText(text: "New", fontsize: Dimensions.fontSizeSmall,fontWeight: FontWeight.w600,color: AppColors.white,),
                      ),
                    ),

                    SizedBox(height: 53.h,),
                    CustomText(
                      text: AppConstants.freshVegetables,
                      fontWeight: FontWeight.w500,
                      fontsize: Dimensions.fontSizeLarge,
                      color: AppColors.white,
                    ),

                    SizedBox(height: 12.h,),
                    Container(
                      height: 24.h,
                      width: 86.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.white
                      ),
                      child: Center(
                        child: CustomText(
                          text: AppConstants.buynow,
                          fontWeight: FontWeight.w400,
                          fontsize: Dimensions.fontSizeSmall,
                          color: AppColors.white200,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },

        ),

        SizedBox(height: 24.h,),
        ///-----------------indicator section-------------------->
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: images.length,
          effect: const WormEffect( // You can choose different effects here
            dotColor: Colors.grey, // Inactive dot color
            activeDotColor: AppColors.black100, // Active dot color
            dotHeight: 8.0, // Height of inactive dots
            // activeDotHeight: 12.0, // Height of active dot
          ),
        ),

      ],
    );
  }
}