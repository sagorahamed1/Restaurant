import 'package:flutter/material(1).dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/controller/my_kookbags_controller.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';

import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/custom_text.dart';
import 'inner_widgets/card_items.dart';
import 'inner_widgets/coupon_code_container.dart';
import 'inner_widgets/total_number_item_container.dart';

class MyKookBagsScreen extends StatelessWidget {
  const MyKookBagsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///---------------------------------app bar section--------------------------->
      appBar: AppBar(
        leading: Container(
            padding: const EdgeInsets.all(19),
            child: SvgPicture.asset(AppIcons.backArrow)),
        title: const CustomText(
          text: AppConstants.myKookbags,
          fontsize: Dimensions.fontSizeExtraLarge,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppIcons.cardIcon))
        ],
      ),

      ///-------------------------------------body section-------------------------->
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeLarge,
              vertical: Dimensions.paddingSizeExtraLarge),
          child: Column(
            children: [
              ///----------------------card itms ----------------------->
              Container(height: 500.w, child: CardItems()),

              ///-----------------------Total number of items container ----------------->
              TotalNumberItemContainer(),

              SizedBox(
                height: 24.w,
              ),

              ///------------------------Coupon Code container------------------------------>
              CouponCodeContainer()
            ],
          ),
        ),
      ),
    );
  }
}
