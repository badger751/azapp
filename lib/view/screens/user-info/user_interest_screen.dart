// ignore_for_file: unused_import

import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/widgets/custom_button.dart';
import 'package:azapp/view/widgets/custom_grey_container.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInterestScreen extends StatefulWidget {
  const UserInterestScreen({super.key});

  @override
  State<UserInterestScreen> createState() => _UserInterestScreenState();
}

class _UserInterestScreenState extends State<UserInterestScreen> {
  bool isWritingClicked = false;
  bool isYogaClicked = false;
  bool isEntertainmentClicked = false;
  bool isTech1Clicked = false;
  bool isArtsClicked = false;
  bool isPlacesClicked = false;
  bool isFaithClicked = false;
  bool isIdentityClicked = false;
  bool isSportsClicked = false;
  bool isKnowledgeClicked = false;
  bool isTech2Clicked = false;

  void onInterestTap(String interest) {
    setState(() {
      switch (interest) {
        case 'Writing':
          isWritingClicked = !isWritingClicked;
          break;
        case 'Yoga / Work out':
          isYogaClicked = !isYogaClicked;
          break;
        case 'Entertainment':
          isEntertainmentClicked = !isEntertainmentClicked;
          break;
        case 'Tech1':
          isTech1Clicked = !isTech1Clicked;
          break;
        case 'Arts':
          isArtsClicked = !isArtsClicked;
          break;
        case 'Places':
          isPlacesClicked = !isPlacesClicked;
          break;
        case 'Faith':
          isFaithClicked = !isFaithClicked;
          break;
        case 'Identity':
          isIdentityClicked = !isIdentityClicked;
          break;
        case 'Sports':
          isSportsClicked = !isSportsClicked;
          break;
        case 'Knowledge':
          isKnowledgeClicked = !isKnowledgeClicked;
          break;
        case 'Tech2':
          isTech2Clicked = !isTech2Clicked;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          const ScreenBackgroundWidget(),
          Padding(
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
                    'What are your interests?',
                    style: TextStyles.mainSubheadingStyle,
                  ),
                ),
                SizedBox(
                  height: 29.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => onInterestTap('Writing'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isWritingClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: CustomGreyContainer(
                              height: 50.h,
                              width: 70.w,
                              padding: EdgeInsets.only(left: 14.w),
                              borderRadius: 12,
                              child: Text(
                                '✍ Writing',
                                style: TextStyle(
                                  color: isWritingClicked
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      GestureDetector(
                        onTap: () => onInterestTap('Yoga / Work out'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isYogaClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: CustomGreyContainer(
                              height: 50.h,
                              width: 150.w,
                              padding: EdgeInsets.only(left: 6.w),
                              borderRadius: 12,
                              child: Center(
                                child: Text(
                                  '🧘 Yoga / Work out',
                                  style: TextStyle(
                                    color: isYogaClicked
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => onInterestTap('Entertainment'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isEntertainmentClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '🎞 Entertainment',
                              style: TextStyle(
                                color: isEntertainmentClicked
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      GestureDetector(
                        onTap: () => onInterestTap('Tech1'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isTech1Clicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '📱 Tech1',
                              style: TextStyle(
                                color: isTech1Clicked
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => onInterestTap('Arts'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isArtsClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '🎭 Arts',
                              style: TextStyle(
                                color:
                                    isArtsClicked ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      GestureDetector(
                        onTap: () => onInterestTap('Places'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isPlacesClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '🗽 Places',
                              style: TextStyle(
                                color: isPlacesClicked
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      GestureDetector(
                        onTap: () => onInterestTap('Faith'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isFaithClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '✨ Faith',
                              style: TextStyle(
                                color: isFaithClicked
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => onInterestTap('Identity'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isIdentityClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '🪪 Identity',
                              style: TextStyle(
                                color: isIdentityClicked
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      GestureDetector(
                        onTap: () => onInterestTap('Sports'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isSportsClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '🏅 Sports',
                              style: TextStyle(
                                color: isSportsClicked
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      GestureDetector(
                        onTap: () => onInterestTap('Knowledge'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isKnowledgeClicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '📚 Knowledge',
                              style: TextStyle(
                                color: isKnowledgeClicked
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      GestureDetector(
                        onTap: () => onInterestTap('Tech2'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            color: isTech2Clicked
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              '📱 Tech2',
                              style: TextStyle(
                                color: isTech2Clicked
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22.w),
                  child: CustomButton(
                    buttonText: 'Next',
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteName.avatarNameGenderScreen);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
