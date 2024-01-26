
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class DiscoundContainer extends StatelessWidget {
  const DiscoundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 56.w,
      decoration: BoxDecoration(
        color: AppColors.red,
        borderRadius: BorderRadius.circular(3.r),
      ),
      child: Center(
        child: CustomText(
          text: AppConstants.Off30Discound,
          fontsize: Dimensions.fontSizeSmall,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
      ),
    );
  }
}
