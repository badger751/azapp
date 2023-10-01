import 'package:azapp/gen/fonts.gen.dart';
import 'package:azapp/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle mainheadingStyle = TextStyle(
    fontFamily: FontFamily.eurostile,
    fontSize: 32.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
    letterSpacing: 2.0,
    wordSpacing: 0.5,
    height: 1.5,
  );

  static TextStyle mainSubheadingStyle = TextStyle(
    fontFamily: FontFamily.eurostile,
    fontSize: 22.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
    letterSpacing: 0.66,
    height: 1.5,
  );

  static TextStyle purpleTextStyle = TextStyle(
    fontFamily: FontFamily.openSans,
    fontSize: 12.sp,
    color: AppColors.purpleLightColor,
    decoration: TextDecoration.underline,
  );

  static TextStyle simpleTextStyle = TextStyle(
    fontFamily: FontFamily.openSans,
    fontSize: 12.sp,
  );
  static TextStyle buttonTextBlack18 = TextStyle(
    fontFamily: FontFamily.openSans,
    color: AppColors.buttonTextColor,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
    fontSize: 18.sp,
  );
  static TextStyle buttonTextWhite18 = TextStyle(
    fontFamily: FontFamily.openSans,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    fontSize: 18.sp,
  );

  static TextStyle buttonTextWhite15 = TextStyle(
    fontFamily: FontFamily.openSans,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w400,
    wordSpacing: 1.5,
    letterSpacing: 0.15,
    fontSize: 15.sp,
  );

  static TextStyle homeScreenFont = TextStyle(
    fontFamily: FontFamily.workSans,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w500,
    wordSpacing: 1.5,
    letterSpacing: 0.15,
    fontSize: 15.sp,
  );
}
