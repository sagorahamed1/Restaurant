import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/controller/stores_controller.dart';
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
        title:TextFormField(
          decoration: InputDecoration(
            border: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2))
            ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(AppIcons.search),
              ),
              hintText: "Search Store",
              ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppIcons.cardIcon))
        ],
      ),

      ///------------------------------body section------------------------------->
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeLarge,
            vertical: Dimensions.paddingSizeExtraLarge),
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
              height: 345.h,
              child: Obx(()=> ListView.builder(
                  itemCount: controller.storesProductItems.length,
                  itemBuilder: (context, index) {
                    var storesInfo = controller.storesProductItems[index];
                    return Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 174.h,
                      width: 335.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage("${storesInfo["image"]}"),fit: BoxFit.cover
                        )
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 24.h,
                                width: 34.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: AppColors.red
                                ),
                                child: Center(child: SvgPicture.asset(AppIcons.loveRed,color: Colors.white,height: 15.h,width: 15.w,)),
                              ),
                            ),


                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 48.h,
                                width: 335.w,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),
                                  color: AppColors.black
                                ),
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
    );
  }
}
