


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class WalletGroupContainer extends StatelessWidget {

  final String? text;
  final String? containerIcon;


  const WalletGroupContainer({
    this.text,
    this.containerIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 100.w,
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
          Container(
              padding: EdgeInsets.only(top: 19.w, left: 31.w,right: 31.w,bottom: 4.w),
              child: SvgPicture.asset("$containerIcon")),
          CustomText(text: "$text", fontsize: Dimensions.fontSizeSmall,fontWeight: FontWeight.w500,bottom: 10.w,)
        ],
      ),
    );
  }
}
