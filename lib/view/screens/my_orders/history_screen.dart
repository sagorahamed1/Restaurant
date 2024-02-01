import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/view/screens/my_orders/InnerWidget/item_section_history.dart';
import 'package:restaurent_kookbags/view/widgets/two_botton.dart';
import '../../../routes/app_routes.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_text.dart';
import 'InnerWidget/item_section.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.orderDetails),
        centerTitle: true,
        elevation: 12,
        // leading: const Icon(Icons.arrow_back_ios_outlined),
        // toolbarOpacity: 0.5,
        shadowColor: const Color(0xFFe8e8e8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //===============================================> Two Button Section <=============================
              Row(
                children: [
                  const TwoBotton(
                    route: AppRoutes.myOrdersScreen,
                    textColor: Colors.black,
                    text: AppConstants.running,
                    bottonColor: Colors.white,

                  ),
                  SizedBox(width: 8.w),
                  const TwoBotton(
                    route: null,
                    textColor: Colors.white,
                    text: AppConstants.history,
                    bottonColor: Color(0xFFCD0608),
                  ),
                ],
              ),
              //===============================================> Item Section <=============================
              SizedBox(height: 16.h),
              const Divider(color: Color(0xFFf3cccd)),
              SizedBox(height: 16.h),
              const ItemSectionHistory(),
              SizedBox(height: 16.h),
              const Divider(),
              SizedBox(height: 16.h),
              const ItemSectionHistory(),
              SizedBox(height: 16.h),
              const Divider(),
              SizedBox(height: 16.h),
              const ItemSectionHistory(),
              SizedBox(height: 16.h),
              const Divider(),
              SizedBox(height: 16.h),
              const ItemSectionHistory(),
              SizedBox(height: 16.h),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
