import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height:MediaQuery.of(context).size.height*0.72.w,
        width: MediaQuery.of(context).size.width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage(AppImages.bgImageForbottomsheet),fit: BoxFit.contain,alignment: Alignment.topCenter,
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15.w,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.w, top: 10.h),
                    height: 24.h,
                    width: 34.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.red),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: SvgPicture.asset(
                      AppIcons.loveRed,
                      color: Colors.red,
                      height: 15.h,
                      width: 15.w,
                    )),
                  ),
                  Container(
                    height: 20.w,
                    width: 58.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(color: AppColors.red),
                    ),
                    child: const Center(
                      child: CustomText(
                        text: "In Stock",
                        fontsize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 15.w, top: 10.h),
                      height: 24.h,
                      width: 34.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.red),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.close,
                        color: AppColors.red,
                      )),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 7.w,
              ),

              ///--------------------------------product image, name, price------------------------------->
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImages.appel,
                        height: 120.h,
                        width: 123.w,
                        fit: BoxFit.contain,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24.w, top: 20.w),
                        child: Column(
                          children: [
                            const CustomText(
                              text: AppConstants.freshPeach,
                              fontWeight: FontWeight.w600,
                              fontsize: Dimensions.fontSizeLarge,
                              color: AppColors.black,
                            ),
                            const CustomText(
                              text: AppConstants.groceryStore,
                              fontWeight: FontWeight.w400,
                              fontsize: Dimensions.fontSizeDefault,
                              color: AppColors.black,
                            ),
                            const Row(
                              children: [
                                CustomText(
                                  text: "${AppConstants.productPrice}  ",
                                  fontWeight: FontWeight.w600,
                                  fontsize: Dimensions.fontSizeExtraLarge,
                                  color: AppColors.black,
                                ),
                                CustomText(
                                  text: AppConstants.productOffPrice,
                                  fontWeight: FontWeight.w400,
                                  fontsize: Dimensions.fontSizeLarge,
                                  color: AppColors.black,
                                ),
                              ],
                            ),
                            Container(
                                height: 25.w,
                                width: 35.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.white20),
                                child: const Center(
                                    child: CustomText(
                                  text: "In kg",
                                  fontWeight: FontWeight.w600,
                                  fontsize: Dimensions.fontSizeDefault,
                                  color: AppColors.black,
                                )))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),

              const CustomText(
                text: AppConstants.description,
                fontsize: Dimensions.fontSizeLarge,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
              const CustomText(
                text: AppConstants.descriptionDetails,
                fontsize: Dimensions.fontSizeSmall,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),

              SizedBox(height: 16.w,),
              const CustomText(
                text: "Weight",
                fontsize: Dimensions.fontSizeLarge,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),

              SizedBox(height: 7.w,),
              ///----------------------------weight select-------------------------->
              WeightSelect(),
              WeightSelect(),
              WeightSelect(),


              ///--------------------quantity--------------------->
              SizedBox(height: 24.w,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: "Quantity",
                    fontsize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),

                  Container(
                      height: 32.w,
                      width: 108.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.white20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.remove,color: Colors.red,),
                          CustomText(
                            text: "In kg",
                            fontWeight: FontWeight.w600,
                            fontsize: Dimensions.fontSizeDefault,
                            color: AppColors.black,
                          ),
                          Icon(Icons.add,color: Colors.red,),
                        ],
                      ))
                ],
              ),


              SizedBox(height: 20.w,),
              Divider(),

              SizedBox(height: 20.w,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Total",
                    fontsize: Dimensions.fontSizeExtraLarge,
                    fontWeight: FontWeight.w600,
                    color: AppColors.red,
                  ),

                  CustomText(
                    text: r"$1058",
                    fontsize: Dimensions.fontSizeExtraLarge,
                    fontWeight: FontWeight.w600,
                    color: AppColors.red,
                  ),
                ],
              ),


              SizedBox(height: 14.w,),
              ElevatedButton(onPressed: (){}, child: const CustomText(text: "ADD TO CART",color: AppColors.white,))
            ],
          ),
        ),
      ),
    );
  }
}

class WeightSelect extends StatelessWidget {
  const WeightSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 7.w,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 21.w,
                  width: 21.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: AppColors.red, width: 5)),
                ),
                const CustomText(
                  text: "  1 kg",
                  fontsize: Dimensions.fontSizeLarge,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ],
            ),
            const Row(
              children: [
                CustomText(
                  text: "945 ",
                  fontsize: Dimensions.fontSizeLarge,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
                CustomText(
                  text: "TK",
                  fontsize: Dimensions.fontSizeSmall,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
