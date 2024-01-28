
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';

class headerFourBotton extends StatefulWidget {
   headerFourBotton({
    super.key,
  });

  @override
  State<headerFourBotton> createState() => _headerFourBottonState();
}

class _headerFourBottonState extends State<headerFourBotton> {
  List bottonList = ["All", "Grocery","Puffed Rice","Vegetables"];

  int selectedBotton = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bottonList.length,
            itemBuilder: (context, index) {
              return  Wrap(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedBotton = index;
                        print("==============${bottonList[index]} and $selectedBotton");
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10.w),
                      padding: const EdgeInsets.only(left: 20,right: 20, top: 5,bottom: 5),
                     height: 33.h,
                      decoration: BoxDecoration(
                        color: selectedBotton == index ? Colors.red : Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border:  Border.all(color: AppColors.red)
                      ),
                      child: Center(
                        child: Text("${bottonList[index]}",style: TextStyle(color: selectedBotton == index ? AppColors.white : AppColors.black ),),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 160.w),
          height: 5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bottonList.length,
            itemBuilder: (context, index) {
              return  Container(
                margin: EdgeInsets.only(right: 4.w),
                height: 4.h,
                width:selectedBotton == index ? 15.w : 9.w,
                decoration: BoxDecoration(
                    color: selectedBotton == index ? AppColors.white100 : AppColors.white500,
                    borderRadius: BorderRadius.circular(2),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
