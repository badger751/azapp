// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final Color hintColor;
  final TextEditingController controller;
  const CustomTextFieldWidget({
    Key? key,
    required this.hintText,
    required this.hintColor,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return null;
      },
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: hintColor,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5), fontFamily: 'Open Sans'),
        contentPadding: EdgeInsets.only(top: 4.w, bottom: 4.w),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8.w), borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
      ),
    );
  }
}
