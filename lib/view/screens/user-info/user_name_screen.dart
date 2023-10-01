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

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  bool isClicked = false;

  void onTap() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  TextEditingController temp = TextEditingController();

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
                        'Enter your name',
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
                          hintText: 'enter full name',
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
                        'Your pronouns',
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
                          child: Center(
                            child: Text(
                              'She/her',
                              style: TextStyles.buttonTextWhite15,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    if (!isClicked)
                      Padding(
                        padding: EdgeInsets.only(left: 11.w),
                        child: GestureDetector(
                          onTap: onTap,
                          child: CustomGreyContainer(
                              height: 40.h,
                              width: 332.w,
                              padding: EdgeInsets.only(left: 14.w),
                              borderRadius: 12,
                              child: Center(
                                child: Text(
                                  'He/Him',
                                  style: TextStyles.buttonTextWhite15,
                                ),
                              )),
                        ),
                      ),
                    if (isClicked)
                      Padding(
                        padding: EdgeInsets.only(left: 11.w),
                        child: GestureDetector(
                          onTap: onTap,
                          child: Container(
                            height: 40.h,
                            width: 332.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  Assets.images.geadientBorder.path,
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
                      child: CustomGreyContainer(
                          height: 40.h,
                          width: 332.w,
                          padding: EdgeInsets.only(left: 14.w),
                          borderRadius: 12,
                          child: Center(
                            child: Text(
                              'They/Them',
                              style: TextStyles.buttonTextWhite15,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: CustomGreyContainer(
                          height: 40.h,
                          width: 332.w,
                          padding: EdgeInsets.only(left: 14.w),
                          borderRadius: 12,
                          child: Center(
                            child: Text(
                              'Prefer not to say',
                              style: TextStyles.buttonTextWhite15,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    // Container(
                    //   height: 40.h,
                    //   width: 332.w,
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage(
                    //         Assets.images.geadientBorder.path,
                    //       ),
                    //     ),
                    //   ),
                    //   child: Center(
                    //     child: Text(
                    //       'She/her',
                    //       style: TextStyles.buttonTextWhite15,
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   width: 332,
                    //   height: 40,
                    //   decoration: ShapeDecoration(
                    //     // color: Color(0xB2191919),
                    //     shape: RoundedRectangleBorder(
                    //       side: BorderSide(width: 1),
                    //       borderRadius: BorderRadius.circular(12),
                    //     ),
                    //     gradient: LinearGradient(colors: [
                    //       Colors.white.withOpacity(0.5),
                    //       Colors.white,
                    //       Colors.black.withOpacity(0.5),
                    //     ], stops: [
                    //       0.2,
                    //       0.1,
                    //       0.7
                    //     ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    //   ),
                    // ),
                    SizedBox(
                      height: 245.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22.w),
                      child: CustomButton(
                        buttonText: 'Next',
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.userdobScreen);
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
