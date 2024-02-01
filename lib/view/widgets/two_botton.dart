
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';
import 'custom_text.dart';

class TwoBotton extends StatelessWidget {
  final String? route;
  final String? text;
  final Color? bottonColor;
  final Color textColor;

  const TwoBotton({
    this.route,
    required this.textColor,
    this.bottonColor,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed("$route");
      },
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        width: 160.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: bottonColor,
            border: Border.all(color: AppColors.red)),
        child: Center(
            child: CustomText(
              text: "$text",
              fontsize: Dimensions.fontSizeLarge.h,
              fontWeight: FontWeight.w600,
              color: textColor,
            )),
      ),
    );
  }
}
