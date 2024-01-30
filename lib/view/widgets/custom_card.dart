import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_kookbags/view/widgets/input_text.dart';

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
            blurRadius: 20.r,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          children: [
            svgImage,
            SizedBox(width: 8.w),
            InputText(
                title: title, fontsize: 12.sp, fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
