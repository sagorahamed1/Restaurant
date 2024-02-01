import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/view/screens/mudule/inner_widgets/FruitsSlider/fruits_container.dart';
import 'package:restaurent_kookbags/view/screens/mudule/inner_widgets/SplashDealsSlider/splash_deals_slider_container.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../widgets/custom_text.dart';

class FruitsContainerSlider extends StatefulWidget {
  const FruitsContainerSlider({super.key});

  @override
  State<FruitsContainerSlider> createState() => _FruitsContainerSliderState();
}

class _FruitsContainerSliderState extends State<FruitsContainerSlider> {
  int currentIndex = 0;
  List sliderContainerList = [
    FruitsContainerWidget(),
    FruitsContainerWidget(),
    FruitsContainerWidget(),
    FruitsContainerWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.w,
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
