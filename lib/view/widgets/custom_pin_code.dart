import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      backgroundColor: const Color(0xFFFFFFFF),
      appContext: context,
      length: 4,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8.r),
          fieldHeight: 48.w,
          fieldWidth: 48.w,
          inactiveColor: Colors.red,
          activeColor: Colors.red
      ),
      obscureText: false,
      keyboardType: TextInputType.number,
      onChanged: (value){
      },
    );
  }
}