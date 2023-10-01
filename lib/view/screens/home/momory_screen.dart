// ignore_for_file: unused_import

import 'dart:ui';

import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/screens/home/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemoryScreen extends StatelessWidget {
  const MemoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: Text('No memory is added',
              style: TextStyles.mainSubheadingStyle.copyWith(fontSize: 25.sp)),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: Text('Add your people of pet',
              style: TextStyles.buttonTextWhite15.copyWith(fontSize: 18.sp)),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: GestureDetector(
            onTap: () {
              //Navigate to add people or pet screen
              Navigator.pushNamed(context, RouteName.addPeoplePetScreen);
            },
            child: Container(
              height: 50.h,
              width: 70.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.icons.seventyBySeventy.path),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 24.sp,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 10.w),
          child: Text(
              'Add facts about you so that AZ can connect with you even more',
              style: TextStyles.buttonTextWhite15.copyWith(fontSize: 18.sp)),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RouteName.addFactScreen);
            },
            child: Container(
              height: 50.h,
              width: 70.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.icons.seventyBySeventy.path),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 24.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
