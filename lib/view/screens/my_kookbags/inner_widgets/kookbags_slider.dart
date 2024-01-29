import 'package:flutter/material(1).dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';

class KookBagsSlider extends StatefulWidget {
  const KookBagsSlider({super.key});

  @override
  State<KookBagsSlider> createState() => _KookBagsSliderState();
}

class _KookBagsSliderState extends State<KookBagsSlider> {
  double cValue = 0;

  chageValue(double value) {
    setState(() {
      cValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r), color: AppColors.black100),
      child: Column(
        children: [
          ///-------------------------------slider --------------------------->
          Slider(
              divisions: 2,
              autofocus: true,
              overlayColor: MaterialStateProperty.all(Colors.cyan),

              value: cValue,
              activeColor: Colors.green,
              inactiveColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  chageValue(value);
                });
              }),

          ///----------------------------intigator----------------------------->
          Container(
            width: 270.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("1"), Text("2"), Text("3")],
            ),
          )
        ],
      ),
    );
  }
}
