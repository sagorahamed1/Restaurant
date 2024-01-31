
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';
import '../home_screen.dart';
import 'discound_container.dart';

class FeaturedProductsContainer extends StatelessWidget {
  const FeaturedProductsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.w,
      width: 163.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.paddingSizeDefault,
            horizontal: Dimensions.paddingSizeDefault),
        child: Column(
          children: [
            ///-----------discound and favorite------------->
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DiscoundContainer(),
                Container(
                    padding: EdgeInsets.all(5),
                    height: 24.w,
                    width: 24.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.white10),
                    child: SvgPicture.asset(
                      AppIcons.loveRed,
                      color: Colors.red,fit: BoxFit.contain,
                    ))
              ],
            ),
            SizedBox(height: 17.h,),

            ///--------------------image of product------------------>
            Container(
              height: 78.w,
              width: 78.w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Image.asset(AppImages.tomato,fit: BoxFit.cover,),
            ),
            Spacer(),

            ///--------------------product name and price section------------>
            const Row(
              children: [
                CustomText(
                  text: AppConstants.Tomato,
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                CustomText(
                  text: AppConstants.kgWeight,
                  fontsize: Dimensions.fontSizeExtraSmall,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ],
            ),
            const Row(
              children: [
                CustomText(
                  text: AppConstants.price,
                  fontsize: Dimensions.fontSizeSmall,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                CustomText(
                  text: AppConstants.offprice,
                  fontsize: Dimensions.fontSizeExtraSmall,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 12,
                ),
                Icon(Icons.star, color: Colors.red, size: 12),
                Icon(Icons.star, color: Colors.red, size: 12),
                Icon(Icons.star, color: Colors.black26, size: 12),
                Icon(Icons.star, color: Colors.black26, size: 12),
              ],
            )
          ],
        ),
      ),
    );
  }
}