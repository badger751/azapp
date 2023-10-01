import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/provider/auth/auth_provider.dart';
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
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Consumer<AuthProvider>(
          builder: (context, signupState, child) {
            return SingleChildScrollView(
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
                            'Create your account',
                            style: TextStyles.mainheadingStyle,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: CustomGreyContainer(
                            height: 50.h,
                            width: 310.w,
                            padding: EdgeInsets.only(left: 20.w),
                            borderRadius: 15.sp,
                            child: CustomTextFieldWidget(
                              hintText: 'enter email',
                              hintColor: AppColors.hintFontColor,
                              controller: signupState.emailController,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: CustomGreyContainer(
                            height: 50.h,
                            width: 310.w,
                            padding: EdgeInsets.only(left: 20.w),
                            borderRadius: 15.sp,
                            child: CustomTextFieldWidget(
                              hintText: 'password',
                              hintColor: AppColors.hintFontColor,
                              controller: signupState.passwordController,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.sp),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CustomGreyContainer(
                                    height: 20.h,
                                    width: 17.77.h,
                                    padding: EdgeInsets.zero,
                                    borderRadius: 5,
                                    child: Center(
                                      child: Icon(Icons.check, size: 10.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text('By signing up, you agree to our ', style: TextStyles.simpleTextStyle),
                                  Text('Terms and conditions', style: TextStyles.purpleTextStyle),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 26.w),
                                child: Text('& privacy policy', style: TextStyles.purpleTextStyle),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 29.h,
                        ),
                        CustomButton(
                          buttonText: 'Sign up',
                          onTap: () {
                            signupState.signup();
                            Navigator.pushNamed(context, RouteName.userNameScreen);
                          },
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
                          height: 48.h,
                        ),
                        CustomButtonWithIcon(
                          buttonText: 'Sign up with google',
                          iconPath: Assets.icons.googleIcon.path,
                          textColor: AppColors.buttonTextColor,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomButtonWithIcon(
                          buttonText: 'Sign up with google',
                          iconPath: Assets.icons.appleIcon.path,
                          textColor: AppColors.buttonTextColor,
                        ),
                        SizedBox(
                          height: 116.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have account? ',
                              style: TextStyles.simpleTextStyle,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.popAndPushNamed(context, RouteName.loginScreen);
                              },
                              child: Text(
                                'Log in',
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
            );
          },
        ));
  }
}
