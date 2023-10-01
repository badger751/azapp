import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/widgets/custom_button.dart';
import 'package:azapp/view/widgets/custom_button_with_icon.dart';
import 'package:azapp/view/widgets/custom_grey_container.dart';
import 'package:azapp/view/widgets/custom_textfield.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 121.h),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Login your account',
                      style: TextStyles.mainheadingStyle,
                    ),
                  ),
                  SizedBox(height: 48.h),
                  CustomGreyContainer(
                    height: 50.h,
                    width: 310.w,
                    padding: EdgeInsets.only(left: 20.w),
                    borderRadius: 15.sp,
                    child: CustomTextFieldWidget(hintText: 'enter name', hintColor: AppColors.hintFontColor, controller: temp,),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomGreyContainer(
                    height: 50.h,
                    width: 310.w,
                    padding: EdgeInsets.only(left: 20.w),
                    borderRadius: 15.sp,
                    child: CustomTextFieldWidget(hintText: 'password', hintColor: AppColors.hintFontColor, controller: temp,),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('forgot password?', style: TextStyles.purpleTextStyle),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  CustomButton(
                    buttonText: 'Log in',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 46.h,
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 10.0.w, right: 20.0.w),
                          child: Divider(
                            color: AppColors.whiteColor.withOpacity(0.2),
                          )),
                    ),
                    Text(
                      "Or",
                      style: TextStyle(fontFamily: 'Open Sans', fontSize: 18.sp),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 20.0.w, right: 10.0.w),
                          child: Divider(
                            color: AppColors.whiteColor.withOpacity(0.2),
                          )),
                    ),
                  ]),
                  SizedBox(
                    height: 46.h,
                  ),
                  CustomButtonWithIcon(
                    buttonText: 'Login with google',
                    iconPath: Assets.icons.googleIcon.path,
                    textColor: AppColors.buttonTextColor,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButtonWithIcon(
                    buttonText: 'Continue with google',
                    iconPath: Assets.icons.appleIcon.path,
                    textColor: AppColors.buttonTextColor,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 97.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have account? ',
                        style: TextStyles.simpleTextStyle,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(context, RouteName.signupScreen);
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyles.purpleTextStyle,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
