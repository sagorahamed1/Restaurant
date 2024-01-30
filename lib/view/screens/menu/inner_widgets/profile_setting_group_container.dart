
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class ProfileSettingGroupContainer extends StatelessWidget {
  final String? text;
  final String? containerIcon;
  const ProfileSettingGroupContainer({
    this.text,
    this.containerIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      padding: EdgeInsets.only(top: 15.w, bottom: 15.w, left: 9.w,right: 9.w),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 25,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset("$containerIcon"),
          CustomText(text: "$text", fontsize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w500,),
          Icon(Icons.keyboard_arrow_down_rounded)
        ],
      ),
    );
  }
}

