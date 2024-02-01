import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../controller/friuts_controller.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';
import '../../home/inner_widgets/discound_container.dart';

class ProductContainer extends StatelessWidget {
  ProductContainer({
    super.key,
  });

  FriutsController controller = Get.put(FriutsController());
  RxInt itemQty = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => GridView.builder(
      itemCount: controller.friutsList.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8.h,mainAxisSpacing: 8,childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        var productInfo = controller.friutsList[index];
        itemQty.value = productInfo['qty'];
        print("======================================$itemQty");
        return Container(
          margin: EdgeInsets.only(top: 3.w),
          width: 163.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0x33000000),
                offset: Offset(0, 0),
                blurRadius: 20,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Dimensions.paddingSizeExtraSmall,
                    horizontal: Dimensions.paddingSizeDefault),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ///-----------discound and favorite------------->
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///--------------duscound container-------------->
                        const DiscoundContainer(),
                        Obx(()=> Container(
                          // padding: EdgeInsets.all(5),
                            height: 28.h,
                            width: 35.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white10),
                            child: IconButton(onPressed: (){
                              if(controller.favoriteItemsList.contains(index)){
                                controller.favoriteItemsList.remove(index);
                              }else{
                                controller.favoriteItemsList.add(index);
                              };

                            },
                              icon: controller.favoriteItemsList.contains(index) ? SvgPicture.asset(
                                AppIcons.loveRedwithBorder,
                                fit: BoxFit.cover,
                              ) :  SvgPicture.asset(
                                AppIcons.loveRed,
                                fit: BoxFit.cover,
                              ),
                            )),
                        )
                      ],
                    ),




                    ///--------------------image of product------------------>
                    Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: Image.asset(
                        productInfo["productImage"],
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),

                    Container(
                       width: 50.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.r),
                        border: Border.all(color: AppColors.red),
                      ),child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: " ${productInfo["rating"]}",fontsize: Dimensions.fontSizeExtraSmall.h,fontWeight: FontWeight.w500,color: AppColors.red,),
                          Icon(Icons.star,color: Colors.red,size: 10.h,)
                        ],
                      ),
                    ),
                    ),

                    ///--------------------product name and price section------------>
                    CustomText(
                      text: productInfo["productName"],
                      fontsize: Dimensions.fontSizeDefault.h,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                    Row(
                      children: [
                        CustomText(
                          left: 20.h,
                          text: "${productInfo["price"]}   ",
                          fontsize: Dimensions.fontSizeSmall.h,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                        Expanded(
                          child: CustomText(
                            text: productInfo["offPrice"],
                            fontsize: Dimensions.fontSizeExtraSmall.h,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Spacer(),
              Divider(),
              ///<<<=========================Item Increment Decrement Portion=======================================

              Obx(() => Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if(itemQty.value  != 0)
                      GestureDetector(
                        onTap: (){
                          itemQty.value--;
                          print("***************************************,,,,$itemQty");
                        },
                        child: Container(
                            height: 16.h,
                            width: 26.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: AppColors.red
                            ),
                            child: Center(child: SvgPicture.asset(AppIcons.minusIcon))
                        ),
                      ),
                    CustomText(text: itemQty.value != 0? itemQty.toString() : AppConstants.addtocart,fontsize: Dimensions.fontSizeSmall,fontWeight: FontWeight.w500,color: AppColors.black,),
                    GestureDetector(
                      onTap: (){
                        itemQty.value++;
                        print("***************************************,,,,$itemQty");
                      },
                      child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.5),
                              color: AppColors.red
                          ),
                          child: Center(child: SvgPicture.asset(AppIcons.plusIcon))
                      ),
                    ),
                  ],
                ),
              )),


               SizedBox(height: 5.h,)

            ],
          ),
        );
      },
    ));
  }
}
