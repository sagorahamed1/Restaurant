import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButtom extends StatelessWidget {
  final VoidCallback onpress;
  final String title;
  final IconButton? prefixiIcon;
  CustomButtom({
    super.key, required this.title,required this.onpress, this.prefixiIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        width: 334.w,
         height: 48.w,
        decoration: ShapeDecoration(
          color:  const Color(0xFFcd0608),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        ),
        child: Text(
               title,
               style: TextStyle(
                 letterSpacing: 2,
                 color: Colors.white,
               fontWeight: FontWeight.w600,
               fontSize: 16.w,
               ),
        ),
      ),
    );
  }
}