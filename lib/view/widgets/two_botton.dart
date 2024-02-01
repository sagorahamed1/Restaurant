import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';
import 'custom_text.dart';

class TwoBotton extends StatelessWidget {
  final String? text;
  final Color? bottonColor;
  final Color textColor;

  const TwoBotton({
    required this.textColor,
    this.bottonColor,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.w,
      width: 160.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: bottonColor,
          border: Border.all(color: AppColors.red)),
      child: Center(
          child: CustomText(
        text: "$text",
        fontsize: Dimensions.fontSizeLarge.sp,
        fontWeight: FontWeight.w600,
        color: textColor,
      )),
    );
  }
}
