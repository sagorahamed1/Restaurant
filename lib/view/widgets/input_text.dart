import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? fontsize;
  final FontWeight? fontWeight;
  const InputText({
    super.key, required this.title, this.color, this.fontsize, this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: 'Poppins',
        fontWeight: fontWeight,
        height: 0.w,
        letterSpacing: 0.30.w,
      ),
    );
  }
}