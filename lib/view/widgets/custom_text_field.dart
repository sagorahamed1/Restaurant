import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final Icon prifixicon;
  final String title;
  final Icon? sufixicons;
  final FormFieldValidator? validator;

  const CustomTextField({
    super.key,
    required this.title,
    required this.prifixicon,
    this.sufixicons,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: prifixicon,
          suffixIcon: sufixicons,
          suffixIconColor: Colors.grey,
          prefixIconColor: Colors.grey,
          hintText: title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2.w,
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.grey),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.grey),
          )),
    );
  }
}
