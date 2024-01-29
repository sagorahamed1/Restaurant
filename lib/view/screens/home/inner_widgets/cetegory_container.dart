
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class CetegoryContainer extends StatelessWidget {
  final String? imagepath;
  final Color? imageBgColor;
  final String? text;

  const CetegoryContainer({this.imageBgColor, this.imagepath, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.h,
      width: 106.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x33414138),
            blurRadius: 20,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 22.h,
            left: 16.w,
            child: Container(
              height: 82.h,
              width: 82.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: imageBgColor,
              ),
            ),
          ),
          Positioned(top: 3.h, left: 9.w, child: Image.asset("$imagepath")),
          Positioned(
              bottom: 12.h,
              left: 10.w,
              child: CustomText(
                text: "$text",
                textAlign: TextAlign.center,
                maxline: 2,
                fontWeight: FontWeight.w500,
                fontsize: Dimensions.fontSizeDefault,
              ))
        ],
      ),
    );
  }
}
