import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334.w,
      height: 48.w,
      padding: const EdgeInsets.only(top: 10, left: 6, right:6, bottom: 10),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: const Color(0xFFCD0608)),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 318.w,
            child: Text(
              'Cancel Order',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF61656A),
                fontSize: 16.w,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.11.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
