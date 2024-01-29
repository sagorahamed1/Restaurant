// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CustomText extends StatelessWidget {
//   final TextAlign? textAlign;
//   final double? bottom;
//   final double? left;
//   final double? right;
//   final double? top;
//   final String? text;
//   final double? fontsize;
//   final FontWeight? fontWeight;
//   final Color? color;
//   final double? wordSpacing;
//   final TextOverflow? overflow;
//   final int? maxline;
//   CustomText(
//       {@required
//       this.textAlign,
//       this.text,
//         this.bottom,
//         this.top,
//         this.left,
//         this.right,
//         this.fontsize,
//         this.fontWeight,
//         this.color,
//         this.overflow,this.maxline,
//         this.wordSpacing});
//   @override
//   Widget build(BuildContext context) {
//     return
//       Padding(
//         padding: EdgeInsets.only(bottom: bottom ??0  , top: top ?? 0),
//         child: Text(
//           "$text",
//           textAlign: textAlign,
//           maxLines: maxline,
//           overflow:overflow,
//           style: TextStyle(
//             color: color,
//             fontWeight: fontWeight,
//             fontSize: fontsize,
//           ),
//         ),
//       );
//   }
// }
//



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
        this.maxline,
        this.textAlign = TextAlign.center,
        this.left = 0,
        this.right = 0,
        this.top = 0,
        this.bottom = 0,
        this.fontsize = 14,
        this.fontWeight = FontWeight.w400,
        this.color = AppColors.black100,
        this.text = ""});

  final double left;
  final double right;
  final double top;
  final double bottom;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final TextAlign textAlign;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: left.w, right: right.w, top: top.h, bottom: bottom.h),
      child: Text(
        textAlign: textAlign,
        text,
        maxLines: maxline,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: fontsize.sp,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}