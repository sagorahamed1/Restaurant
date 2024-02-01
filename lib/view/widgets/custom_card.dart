import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Widget svgImage;
  const CustomCard({
    super.key,
    required this.title,
    required this.svgImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106.w,
      height: 48.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: [
          BoxShadow(
            color: const Color(0x33000000),
            blurRadius: 20.w,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
        child: Row(
          children: [
            svgImage,
            SizedBox(width: 4.w),
            CustomText(
                text: title, fontsize: 11.w, fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
