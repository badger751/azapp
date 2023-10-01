import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/widgets/custom_button.dart';
import 'package:azapp/view/widgets/custom_grey_container.dart';
import 'package:azapp/view/widgets/custom_textfield.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

class AvatarNameGenderScreen extends StatefulWidget {
  const AvatarNameGenderScreen({super.key});

  @override
  State<AvatarNameGenderScreen> createState() => _AvatarNameGenderScreenState();
}

class _AvatarNameGenderScreenState extends State<AvatarNameGenderScreen> {
  bool isFemaleClicked = false; // Separate state variables for each button
  bool isMaleClicked = false; // Separate state variables for each button
  TextEditingController temp = TextEditingController();

  void onFemaleTap() {
    setState(() {
      isFemaleClicked = true;
      isMaleClicked = false; // Ensure other button is not clicked
    });
  }

  void onMaleTap() {
    setState(() {
      isFemaleClicked = false; // Ensure other button is not clicked
      isMaleClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const ScreenBackgroundWidget(),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image(
                        image: AssetImage(Assets.icons.backButtonIcon.path),
                        height: 39.sp,
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: Text(
                        'Avatar\'s name',
                        style: TextStyles.mainSubheadingStyle,
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: CustomGreyContainer(
                        height: 40.h,
                        width: 332.w,
                        padding: EdgeInsets.only(left: 14.w),
                        borderRadius: 12,
                        child: CustomTextFieldWidget(
                          hintText: 'enter name',
                          hintColor: AppColors.hintFontColor,
                          controller: temp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: Text(
                        'Avatar\'s gender',
                        style: TextStyles.mainSubheadingStyle,
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: GestureDetector(
                        onTap:
                            onFemaleTap, // Use separate handlers for each button
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: isFemaleClicked
                                ? Colors.blue
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: CustomGreyContainer(
                            height: 40.h,
                            width: 332.w,
                            padding: EdgeInsets.only(left: 14.w),
                            borderRadius: 12,
                            child: Center(
                              child: Text(
                                'Female',
                                style: TextStyle(
                                  color: isFemaleClicked
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: GestureDetector(
                        onTap:
                            onMaleTap, // Use separate handlers for each button
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: isMaleClicked
                                ? Colors.blue
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: CustomGreyContainer(
                            height: 40.h,
                            width: 332.w,
                            padding: EdgeInsets.only(left: 14.w),
                            borderRadius: 12,
                            child: Center(
                              child: Text(
                                'Male',
                                style: TextStyle(
                                  color: isMaleClicked
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 360.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22.w),
                      child: CustomButton(
                        buttonText: 'Next',
                        onTap: () {
                          Navigator.pushNamed(
                              context, RouteName.chooseAvatarScreen);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
