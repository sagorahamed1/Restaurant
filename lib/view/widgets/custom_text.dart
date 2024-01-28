import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final TextAlign? textAlign;
  final String? text;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;
  final TextOverflow? overflow;
  final int? maxline;
  CustomText(
      {@required
      this.textAlign,
      this.text,
        this.fontsize,
        this.fontWeight,
        this.color,
        this.overflow,this.maxline,
        this.wordSpacing});
  @override
  Widget build(BuildContext context) {
    return
      Text(
        "$text",textAlign: textAlign,
        maxLines: maxline,
        overflow:overflow,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontsize,
        ),
      );
  }
}