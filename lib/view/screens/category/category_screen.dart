
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/controller/cetegoryController.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({super.key});

  CetegoryController controller = Get.put(CetegoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-------------------------------app bar section----------------------------->
      appBar: AppBar(
        leading: Container(
            padding: EdgeInsets.all(19),
            child: SvgPicture.asset(AppIcons.backArrow)),
        title: CustomText(text: AppConstants.categories,fontsize: Dimensions.fontSizeExtraLarge,fontWeight: FontWeight.w600,),
      ),

      ///--------------------------body section--------------------------------------->
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge,vertical: Dimensions.paddingSizeExtraLarge),
        child: Column(
          children: [
            Obx(() => Container(
              height: 670,
              child: GridView.builder(
                 itemCount: controller.cetegoryList.value.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 7,mainAxisSpacing: 16,childAspectRatio: 0.8),
                   itemBuilder: (context, index) {
                   var productInfo = controller.cetegoryList[index];
                     return Container(
                       // height: 193.h,
                       // width: 173.w,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: AppColors.white,
                         boxShadow: const [
                           BoxShadow(
                             color: Color(0x33000000),
                             offset: Offset(0, 0),
                             blurRadius: 5,
                             spreadRadius: 0,
                           ),
                         ],
                       ),

                       child: Column(
                         children: [
                           Stack(
                             clipBehavior: Clip.none,
                             children: [
                               Container(
                                 margin: EdgeInsets.only(top: 30.h),
                                 height: 86.h,
                                 width: 86.w,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: productInfo["color"]
                                 ),
                               ),
                               
                               Positioned(
                                 top: 5,
                                 child: Image.asset(productInfo["image"],fit: BoxFit.cover,),
                               )
                             ],
                           ),

                           Divider(),
                           SizedBox(height: 8.h,),
                           CustomText(text: productInfo["productName"],)
                         ],
                       ),
                     );
                   },
               ),
            ),
           )
          ],
        ),
      ),
    );
  }
}
