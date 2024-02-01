import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/routes/app_routes.dart';
import 'package:restaurent_kookbags/view/widgets/two_botton.dart';
import '../../../utils/app_constants.dart';
import 'InnerWidget/item_section.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

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
                    route: null,
                    textColor: Colors.white,
                    text: AppConstants.running,
                    bottonColor: Color(0xFFCD0608),
                  ),
                  SizedBox(width: 8.w),
                  const TwoBotton(
                    route: AppRoutes.historyScreen,
                    textColor: Colors.black,
                    text: AppConstants.history,
                    bottonColor: Colors.white,
                  ),
                ],
              ),
              //===============================================> Item Section <=============================
              SizedBox(height: 16.w),
              const Divider(color: Color(0xFFf3cccd)),
              SizedBox(height: 16.w),
              const ItemSection(),
              SizedBox(height: 16.w),
              const Divider(),
              SizedBox(height: 16.w),
              const ItemSection(),
              SizedBox(height: 16.w),
              const Divider(),
              SizedBox(height: 16.w),
              const ItemSection(),
              SizedBox(height: 16.w),
              const Divider(),
              SizedBox(height: 16.w),
              const ItemSection(),
              SizedBox(height: 16.w),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
