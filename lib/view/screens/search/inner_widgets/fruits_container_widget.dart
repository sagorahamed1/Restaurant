
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class fruitsContainerWidget extends StatelessWidget {
  const fruitsContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.white,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          Row(
            children: [
              ///-----------------iamge-------------------------->
              Container(
                margin: EdgeInsets.only(right: 15.w),
                decoration: const BoxDecoration(
                  color: AppColors.amber,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(AppImages.cauliflower),
              ),


              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: AppConstants.cauliflower,fontsize: Dimensions.fontSizeLarge,fontWeight: FontWeight.w500,),
                  CustomText(text: AppConstants.groceryStore,fontsize: Dimensions.fontSizeExtraSmall,fontWeight: FontWeight.w400,color: Colors.black45),
                  Row(
                    children: [
                      Text("${AppConstants.ofPriceMuduleScreen}   ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: Dimensions.fontSizeExtraSmall,color: Colors.black45,decoration: TextDecoration.lineThrough),),
                      CustomText(text: AppConstants.priceSearchScreeen,fontsize: Dimensions.fontSizeExtraSmall,fontWeight: FontWeight.w500,),
                    ],
                  ),
                ],
              )
            ],
          ),


          ///----------------------------- plus botton----------------------------->
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColors.red
            ),

            child: Icon(Icons.add,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
