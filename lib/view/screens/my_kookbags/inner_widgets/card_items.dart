import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/screens/my_kookbags/inner_widgets/update_bottom_sheet.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

import '../../../../controller/my_kookbags_controller.dart';

class CardItems extends StatelessWidget {
  CardItems({super.key});

  MyKookbagsController controller = Get.put(MyKookbagsController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        itemCount: controller.cardItemsList.length,
        itemBuilder: (context, index) {
          var cardItems = controller.cardItemsList[index];
          return Dismissible(
              ///-----------------back ground container delete icon-------------------------->
              background: Container(
                alignment: Alignment.centerRight,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: AppColors.red,
                ),
                child: Container(
                    margin: EdgeInsets.only(right: 24.w),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              key: Key(controller.cardItemsList[index].toString()),
              onDismissed: (DismissDirection direction) {},



              ///-------------------------------show bottom sheet------------------------>
              child: GestureDetector(
                onTap: (){
                  showBottomSheet(
                    context: context,
                    builder: (context) {
                      return UpDateBottomSheet();
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 16.w),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
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
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///----------------------------image---------------------------->
                      Container(
                        height: 64.w,
                        width: 64.w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImages.cauliflower)),
                            shape: BoxShape.circle,
                            color: AppColors.amber200),
                      ),

                      ///-----------------------friut name---------------------->

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                top: 5.w,
                                text: "${cardItems["name"]}",
                                fontsize: Dimensions.fontSizeLarge,
                                fontWeight: FontWeight.w500,
                              ),

                              ///----------------------price--------------------------->
                              Row(
                                children: [
                                  CustomText(
                                    top: 5.w,
                                    text: "${cardItems["offPrice"]}    ",
                                    fontsize: Dimensions.fontSizeSmall,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  CustomText(
                                    top: 5.w,
                                    text: "${cardItems["price"]}",
                                    fontsize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),

                              ///----------------------weight--------------------------->
                              Row(
                                children: [
                                  CustomText(
                                    top: 5.w,
                                    text: "${cardItems["Variation"]}",
                                    fontsize: Dimensions.fontSizeSmall,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  CustomText(
                                    top: 5.w,
                                    text: "${cardItems["weigth"]}",
                                    fontsize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: 30.w),

                      ///-----------------------------------card items increment and decrement----------------------------------->
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.red,
                              borderRadius: BorderRadius.circular(3.r),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          CustomText(
                            text: "2",
                            fontsize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.w600,
                            top: 5.w,
                            bottom: 5.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.red,
                              borderRadius: BorderRadius.circular(3.r),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.remove,
                                color: AppColors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
