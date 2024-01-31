
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';


class CetegoryContainer extends StatelessWidget {

  const CetegoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(AppRoutes.categoryScreen);
      },
      child: Container(
        height: 134.w,
        width: 106.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 20,
                offset: Offset(0, 10),
                spreadRadius: 0,
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 74.w,
              width: 74.w,
              decoration: const BoxDecoration(
                color: AppColors.amber,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AppImages.cauliflower),
            ),

            SizedBox(height: 12.w,),
            CustomText(
              text: AppConstants.vegetables,
              fontWeight: FontWeight.w500,
              fontsize: Dimensions.fontSizeLarge.w,
              color: AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
