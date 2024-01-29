import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';


class UpDateBottomSheet extends StatelessWidget {
  const UpDateBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ///--------------------------close icon----------------------------->
              Align(
                alignment: Alignment.centerRight,
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

              SizedBox(
                height: 7.w,
              ),

              ///--------------------------------product image, name, price------------------------------->
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      ///----------------------------product image--------------------------->
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

                            ///------------------------------name of the fruits------------------------------->
                            const CustomText(
                              text: AppConstants.freshPeach,
                              fontWeight: FontWeight.w600,
                              fontsize: Dimensions.fontSizeLarge,
                              color: AppColors.black,
                            ),

                            ///---------------------------name of the stores----------------------------->
                            const CustomText(
                              text: AppConstants.groceryStore,
                              fontWeight: FontWeight.w400,
                              fontsize: Dimensions.fontSizeDefault,
                              color: AppColors.black,
                            ),
                            const Row(
                              children: [

                                ///-------------------------------fruits name------------------------------>
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
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.white20),
                                child:  Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    border: Border.all(color: AppColors.red)
                                  ),
                                  child:  Row(
                                    children: [
                                      CustomText(
                                        left: 7.w,
                                        top: 3.w,
                                        bottom: 3.w,
                                        right: 5.w,
                                        text: "4.5",
                                        fontWeight: FontWeight.w600,
                                        fontsize: Dimensions.fontSizeDefault,
                                        color: AppColors.black,
                                      ),

                                       Icon(Icons.star,color: Colors.red,size: 20.w,)
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),


              SizedBox(height: 16.w,),

              ///---------------------------------amount------------------------>
              const CustomText(
                text: "Amount",
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
              ElevatedButton(onPressed: (){}, child: const CustomText(text: "UPDATE CART",color: AppColors.white,))
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
