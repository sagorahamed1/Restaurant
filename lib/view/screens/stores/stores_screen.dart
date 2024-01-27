import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/controller/stores_controller.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/view/screens/stores_details/stores_details_screen.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/two_botton.dart';

class StoresScreen extends StatelessWidget {
  StoresScreen({super.key});

  StoresController controller = Get.put(StoresController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----------------------------app bar section----------------------------->
      appBar: AppBar(
        leading: Container(
            padding: const EdgeInsets.all(19),
            child: SvgPicture.asset(AppIcons.backArrow)),
        title: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: const UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2))),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset(AppIcons.search),
            ),
            hintText: "Search Store",
            hintStyle: TextStyle(fontSize: Dimensions.fontSizeDefault.h)
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppIcons.cardIcon))
        ],
      ),

      ///------------------------------body section------------------------------->
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              // horizontal: Dimensions.paddingSizeLarge,
              // vertical: Dimensions.paddingSizeExtraLarge
          ),
          child: Column(
            children: [
              ///--------------------- two botton------------------------->
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TwoBotton(
                      bottonColor: AppColors.white,
                      text: "Products",
                      textColor: AppColors.black),
                  TwoBotton(
                      bottonColor: AppColors.red,
                      text: "Stores",
                      textColor: AppColors.white),
                ],
              ),
        
              //
              Container(
                height: MediaQuery.of(context).size.height*0.8,
                child: Obx(
                  () => ListView.builder(
                    itemCount: controller.storesProductItems.length,
                    itemBuilder: (context, index) {
                      var storesInfo = controller.storesProductItems[index];
                      return GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.storesDetailsScreen);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20.h),
                          height: 174.w,
                          width: 342.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("${storesInfo["image"]}"),
                                  fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: 14.w,top: 10.h),
                                  height: 24.h,
                                  width: 34.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppColors.red),
                                  child: Center(
                                      child: SvgPicture.asset(
                                    AppIcons.loveRed,
                                    color: Colors.white,
                                    height: 15.h,
                                    width: 15.w,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 100.w,
                              ),
        
                              ///----------------------------stores name location rating------------------>
                              Container(
                                 padding: EdgeInsets.only(left: 14.w, right: 14.w),
                                height: 48.w,
                                width: 342.w,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColors.black),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: storesInfo["storesName"],
                                      textAlign: TextAlign.start,
                                      fontsize: Dimensions.fontSizeDefault.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          text: storesInfo["storesLocation"],
                                          fontsize: Dimensions.fontSizeDefault.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.white,
                                        ),
                                        Container(
                                          height: 20.w,
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: AppColors.white,
                                              border:
                                                  Border.all(color: AppColors.red)),
                                          child: Center(
                                            child: CustomText(
                                              text: storesInfo["rating"],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
