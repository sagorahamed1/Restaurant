import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino(1).dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/view/screens/mudule/inner_widgets/SplashDealsSlider/splash_deals_slider_container.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../widgets/custom_text.dart';

class SplashDealsSlider extends StatefulWidget {
  const SplashDealsSlider({super.key});

  @override
  State<SplashDealsSlider> createState() => _SplashDealsSliderState();
}

class _SplashDealsSliderState extends State<SplashDealsSlider> {
  int currentIndex = 0;
  List sliderContainerList = [splashDealsSliderContainer(),splashDealsSliderContainer(),splashDealsSliderContainer(),splashDealsSliderContainer(),splashDealsSliderContainer()];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sliderContainerList.length,
          itemBuilder: (context, index) {
            return sliderContainerList[index];
          },
      ),
    );
  }
}

