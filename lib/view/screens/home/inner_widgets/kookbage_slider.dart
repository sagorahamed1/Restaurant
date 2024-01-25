import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class KookbagsSlider extends StatefulWidget {
  KookbagsSlider({super.key});

  @override
  State<KookbagsSlider> createState() => _KookbagsSliderState();
}

class _KookbagsSliderState extends State<KookbagsSlider> {
  int currentIndex = 0;

  CarouselController _carouselController = CarouselController();

  List<String> images = [
    "${AppImages.appel}",
    "${AppImages.appel}",
    "${AppImages.appel}",
    "${AppImages.appel}",
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
             aspectRatio: 6,
            autoPlayAnimationDuration: Duration(seconds: 1),
            reverse: false,
          ),
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: EdgeInsets.only(right: 50),
              height: 88.h,
              width: 333.w,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
              ),

              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 82.h,
                      width: 88.w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          topLeft: Radius.circular(8)
                        ),
                        color: AppColors.red,
                      ),
                      margin: EdgeInsets.only(right: 20.w),
                      child: Image.asset(images[index]),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: AppConstants.buyGet,
                          fontWeight: FontWeight.w500,
                          fontsize: Dimensions.fontSizeLarge,
                        ),

                        CustomText(
                          text: AppConstants.mypromocode2020,
                          fontWeight: FontWeight.w400,
                          fontsize: Dimensions.fontSizeSmall,
                        ),

                        CustomText(
                          text: AppConstants.daysRemaining,
                          fontWeight: FontWeight.w400,
                          fontsize: Dimensions.fontSizeSmall,
                          color: AppColors.white200,
                        )
                      ],
                    ),
                  )
                ],
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
