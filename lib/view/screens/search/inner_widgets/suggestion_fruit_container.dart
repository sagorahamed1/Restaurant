import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class SuggestionFruitContainer extends StatelessWidget {
  const SuggestionFruitContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      padding: EdgeInsets.only(top: 16.w, bottom: 14.w, left: 14.w, right: 7.w),
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
          ]),
      child: Row(
        children: [
          Container(
              height: 50.w,
              child: Image.asset(
                AppImages.tomato,
                fit: BoxFit.contain,
              )),
          const Expanded(
              child: CustomText(
            text: AppConstants.deshiOnion,
            fontsize: Dimensions.fontSizeExtraLarge,
            fontWeight: FontWeight.w400,
            color: Colors.black45,
            top: 5,
          )),
        ],
      ),
    );
  }
}
