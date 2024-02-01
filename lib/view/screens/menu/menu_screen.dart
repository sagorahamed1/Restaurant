import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_constants.dart';
import 'package:restaurent_kookbags/utils/dimensions.dart';
import 'package:restaurent_kookbags/view/screens/menu/inner_widgets/about_us_group_container.dart';
import 'package:restaurent_kookbags/view/screens/menu/inner_widgets/rating_us_group_container.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';

import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import '../mudule/inner_widgets/header_slider_widgets.dart';
import 'inner_widgets/profile_setting_group_container.dart';
import 'inner_widgets/shop_by_cetegory.dart';
import 'inner_widgets/wallet_group_container.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///---------------------------app bar section---------------->
      appBar: AppBar(
        leading: Container(
            padding : EdgeInsets.only(left: 20.w),
            child: SvgPicture.asset(AppIcons.location)),

        title: Container(
          height: 29.h,

          child: Image.asset(AppImages.kookbagsLogo),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Container(
              padding: EdgeInsets.only(right: 20),
              child: SvgPicture.asset(AppIcons.notificationBell)))
        ],
      ),


      ///---------------------------body----------------------------->
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 20.w,vertical: 20),
          child: Column(
            children: [
        
              ///--------------------------- header slider widgets----------------------------->
              HeaderSliderWidgets(),
              
              
              
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.w,),


                    ///---------------------------Shop By Category text------------------------->
                    const CustomText(text: AppConstants.shopByCategory, fontsize: Dimensions.fontSizeExtraLarge,fontWeight: FontWeight.w600,),
                    SizedBox(height: 15.w,),
                    ///--------------------------wallet group container-0------------------------>

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShopByCetegoryContainer(
                            imageBgColor: AppColors.amber,
                            imagepath: AppImages.fruitsVegetables,
                            text: AppConstants.fruitsVegetabes),
                        ShopByCetegoryContainer(
                            imageBgColor: AppColors.grey,
                            imagepath: AppImages.fruitsVegetables,
                            text: AppConstants.chickenMutton),
                        ShopByCetegoryContainer(
                            imageBgColor: AppColors.amber,
                            imagepath: AppImages.fruitsVegetables,
                            text: AppConstants.fruitsVegetabes),
                      ],
                    ),


                    SizedBox(height: 76.w,),


                    ///--------------------------wallet group container-0------------------------>
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WalletGroupContainer(text: "Wallet", containerIcon: AppIcons.wallet,),
                        WalletGroupContainer(text: "Loyalty Points", containerIcon: AppIcons.loyaltyPoints,),
                        WalletGroupContainer(text: "Refer & Earn", containerIcon: AppIcons.referEarn,),
                      ],
                    ),
        
        
                    SizedBox(height: 19.w,),
                    ///----------------------------Profile setting group container ----------------------------->
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileSettingGroupContainer(text: "Profile \n Settings",containerIcon: AppIcons.profileSettings,),
                        ProfileSettingGroupContainer(text: "Kookbags \n Policy",containerIcon: AppIcons.kookbagsPolicy,)
                      ],
                    ),
        
        
        
                    SizedBox(height: 19.w,),
                    ///----------------------------My Profile group contaiter----------------------------->
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myProfileGroupContainer1(),
                        myProfileGroupContainer2(),
        
                      ],
                    ),
        
        
        
                    SizedBox(height: 19.w,),
                    ///----------------------------about us group container----------------------------->
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AboutUsGroupContainer(text: "About Us",containerIcon: AppIcons.aboutUs,),
                        AboutUsGroupContainer(text: "Servicable Area",containerIcon: AppIcons.servicableArea,)
                      ],
                    ),
        
                    SizedBox(height: 12.w,),
        
        
                    ///----------------------------Rating us group container----------------------------->
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingUsGroupContainer(text: "Rate Us", containerIcon: AppIcons.rateUs,),
                        RatingUsGroupContainer(text: "Live Chat", containerIcon: AppIcons.liveChat,),
                        RatingUsGroupContainer(text: "Log Out", containerIcon: AppIcons.logOut,),
                      ],
                    ),
        
        
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



Widget myProfileGroupContainer1(){
  return  Container(
    width: 163.w,
    padding: EdgeInsets.only(top: 15.w, bottom: 15.w, left: 9.w,right: 9.w),
    decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow:  const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.myProfile),
            const CustomText(text: "  My Profile", fontsize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w500,),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.myAddress),
            const CustomText(text: "  My Address", fontsize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w500,),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.myLanguage,color: Colors.red,),
            const CustomText(text: "  My Language", fontsize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w500,),
          ],
        ),

      ],
    ),
  );
}





Widget myProfileGroupContainer2(){
  return  Container(
    width: 163.w,
    padding: EdgeInsets.only(top: 15.w, bottom: 15.w, left: 9.w,right: 9.w),
    decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow:  const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.privacyPolicy),
            CustomText(text: "  Privacy Policy", fontsize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w500,),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.tOS),
            CustomText(text: "  TOS", fontsize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w500,),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.helpSupport,),
            Expanded(child: CustomText(text: "  Help & Support", fontsize: Dimensions.fontSizeDefault,fontWeight: FontWeight.w500,)),
          ],
        ),

      ],
    ),
  );
}