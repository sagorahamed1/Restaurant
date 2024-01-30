import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputField extends StatelessWidget {
  final String? title;
  const CustomInputField({
    super.key, this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFFB9B9B9),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.0, color: Colors.white),
        ),
      ),
    );
  }
}