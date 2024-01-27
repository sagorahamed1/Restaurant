
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class KookbagsTriviaSlider extends StatefulWidget {
  KookbagsTriviaSlider({super.key});

  @override
  State<KookbagsTriviaSlider> createState() => _KookbagsTriviaSliderState();
}

class _KookbagsTriviaSliderState extends State<KookbagsTriviaSlider> {
  int currentIndex = 0;

  CarouselController _carouselController = CarouselController();

  List images = [
    {
      "sliderImage" : "${AppImages.appel}",
      "bgColor" :"${AppImages.kookbagsTrivia_slider1}"
    },
    {
      "sliderImage" : "${AppImages.appel2}",
      "bgColor" :"${AppImages.kookbagsTrivia_slider1}"
    }
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      carouselController: _carouselController,
      itemCount: images.length,
      options: CarouselOptions(
        autoPlay: false,
        enlargeCenterPage: true,
        aspectRatio: 2,

        autoPlayAnimationDuration: Duration(seconds: 1),
        reverse: false,
      ),
      itemBuilder: (context, index, realIndex) {
        var sliderImage = images[index];
        return Container(
          height: 140.w,
          width: 229.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage(sliderImage["bgColor"],),fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x33414138),
                blurRadius: 20,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),

          child: Image.asset(sliderImage["sliderImage"]),
        );
      },

    );
  }
}
