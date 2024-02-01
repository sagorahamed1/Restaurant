
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../widgets/custom_text.dart';

class OrderDialogWithGridview extends StatelessWidget {
  const OrderDialogWithGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.w, left: 15.h, right: 15.h, bottom: 25.w),
      width: 170.w,
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(26.r),
          border: Border.all(color: AppColors.red,width: 2)
      ),

      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [

          ///-------------------------------my Kookbags--------------------------------->
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.myKookBagsScreen);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFFFFF5F5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x4C000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),child: Column(
              children: [
                SizedBox(height: 25.w,),
                SvgPicture.asset(AppIcons.myKookbags),
                CustomText(text: "My \n Kookbags",)
              ],
            ),
            ),
          ),


          ///-------------------------------My WishList--------------------------------->
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.storesScreen);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFFFFF5F5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x4C000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),child: Column(
              children: [
                SizedBox(height: 25.w,),
                SvgPicture.asset(AppIcons.myWishList),
                CustomText(text: "My \n Wishlist",)
              ],
            ),
            ),
          ),



          ///-------------------------------Order History--------------------------------->
          GestureDetector(
            onTap: (){
               Get.toNamed(AppRoutes.myOrdersScreen);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFFFFF5F5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x4C000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),child: Column(
              children: [
                SizedBox(height: 25.w,),
                SvgPicture.asset(AppIcons.orderHistory),
                CustomText(text: "Order \n History",)
              ],
            ),
            ),
          ),


          ///-------------------------------order Tracking--------------------------------->
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.myOrdersScreen);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFFFFF5F5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x4C000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),child: Column(
              children: [
                SizedBox(height: 25.w,),
                SvgPicture.asset(AppIcons.orderTraking),
                CustomText(text: "Order \n Tracking",)
              ],
            ),
            ),
          ),


        ],
      ),
    );
  }
}


