


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class RatingUsGroupContainer extends StatelessWidget {

  final String? text;
  final String? containerIcon;


  const RatingUsGroupContainer({
    this.text,
    this.containerIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106.w,
      padding: EdgeInsets.only(top: 19.w, bottom: 15.w, left: 31.w,right: 31.w),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 25,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ]
      ),
      child: Column(
        children: [
          SvgPicture.asset("$containerIcon"),
          CustomText(text: "$text", fontsize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w500,)
        ],
      ),
    );
  }
}
