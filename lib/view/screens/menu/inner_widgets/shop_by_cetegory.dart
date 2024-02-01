
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class ShopByCetegoryContainer extends StatelessWidget {
  final String? imagepath;
  final Color? imageBgColor;
  final String? text;

  const ShopByCetegoryContainer({this.imageBgColor, this.imagepath, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.w,
      // width: MediaQuery.of(context).size.width/3.5,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x33414138),
            blurRadius: 20,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),

      child: Column(
        children: [
          SizedBox(height: 24.w,),
          Container(
            height: 62.w,
            width: 62.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: imageBgColor,
              image: DecorationImage(
                image: AssetImage("$imagepath"),
              )
            ),
          ),


          Spacer(),


          Flexible(
            child: CustomText(
              text: "$text",
              textAlign: TextAlign.center,
              maxline: 2,
              fontWeight: FontWeight.w500,
              fontsize: Dimensions.fontSizeSmall,
            ),
          ),

          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
