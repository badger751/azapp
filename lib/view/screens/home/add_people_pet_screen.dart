// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'package:azapp/provider/home/chat_screen_provider.dart';
import 'package:azapp/provider/home/main_chat_screen_provider.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/screens/home/main_chat_screen.dart';
import 'package:azapp/view/screens/home/momory_screen.dart';
import 'package:azapp/view/screens/home/profile_screen.dart';
import 'package:azapp/view/widgets/custom_button.dart';
import 'package:azapp/view/widgets/custom_grey_container.dart';
import 'package:azapp/view/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/view/screens/home/drawer_screen.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';
import 'package:provider/provider.dart';

class AddPeoplePetScreen extends StatelessWidget {
  const AddPeoplePetScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 39.h,
          leadingWidth: 400.w,
          leading: Padding(
            padding: EdgeInsets.only(left: 11.w, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image(
                    image: AssetImage(Assets.icons.backButtonIcon.path),
                    height: 39.sp,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    height: 30.h,
                    padding: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                Assets.icons.dateSelectorIcon.path))),
                    child: Image(
                      image: AssetImage(Assets.icons.settingIcon.path),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: AppColors.backgroundColor,
        drawer: const DrawerScreen(),
        body: Consumer<ChatScreenProvider>(
          builder: (context, homeState, child) {
            return SingleChildScrollView(
              child: Stack(children: [
                const ScreenBackgroundWidget(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 21.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 600.h,
                          width: 350.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.sp),
                            image: DecorationImage(
                              image:
                                  AssetImage(Assets.images.homescreenMen.path),
                              opacity: 0.3,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.w),
                                  child: Text('Add people or pet',
                                      style: TextStyles.mainSubheadingStyle
                                          .copyWith(fontSize: 25.sp)),
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                                Row(
                                  children: [
                                    customToggleSwitch(homeState.addPeople, () {
                                      homeState.peoplePetChoice('people');
                                    }),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Add people',
                                      style: TextStyles.buttonTextWhite18,
                                    ),
                                    customToggleSwitch(homeState.addPet, () {
                                      homeState.peoplePetChoice('pet');
                                    }),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Add pet',
                                      style: TextStyles.buttonTextWhite18,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.w),
                                  child: addPeople(
                                    homeState.nameController,
                                    homeState.relationshipController,
                                    homeState.descriptionController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomButton(
                              buttonText: 'Save',
                              width: 350.w,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    homeState.changeIndex(0);
                                  },
                                  child: CustomRealContainer(
                                    height: 35.h,
                                    width: 109.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: homeState.currentIndex == 0
                                              ? AppColors.selectedContainerColr
                                              : AppColors
                                                  .containerBackgroundColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12.sp))),
                                      child: Center(
                                        child: Text(
                                          'Chat',
                                          style: TextStyles.buttonTextWhite15
                                              .copyWith(fontSize: 12.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    homeState.changeIndex(1);
                                  },
                                  child: CustomRealContainer(
                                    height: 35.h,
                                    width: 109.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: homeState.currentIndex == 1
                                              ? AppColors.selectedContainerColr
                                              : AppColors
                                                  .containerBackgroundColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12.sp))),
                                      child: Center(
                                        child: Text(
                                          'Memory',
                                          style: TextStyles.buttonTextWhite15
                                              .copyWith(fontSize: 12.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    homeState.changeIndex(2);
                                  },
                                  child: CustomRealContainer(
                                    height: 35.h,
                                    width: 109.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: homeState.currentIndex == 2
                                              ? AppColors.selectedContainerColr
                                              : AppColors
                                                  .containerBackgroundColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12.sp))),
                                      child: Center(
                                        child: Text(
                                          'Profile',
                                          style: TextStyles.buttonTextWhite15
                                              .copyWith(fontSize: 12.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
            );
          },
        ));
  }

  Widget customToggleSwitch(bool activated, Function()? onTap) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 25.h,
          width: 25.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.h / 2),
            gradient: RadialGradient(
              colors: AppColors.radioButtonGradient,
            ),
            border: Border.all(color: Colors.white),
          ),
          child: Center(
            child: Container(
              height: 11.h,
              width: 11.h,
              decoration: BoxDecoration(
                color: activated ? AppColors.whiteColor : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(11.h / 2),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget addPeople(
      TextEditingController nameController,
      TextEditingController relationshipController,
      TextEditingController descriptionController) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: TextStyles.mainSubheadingStyle,
        ),
        SizedBox(
          height: 17.h,
        ),
        CustomGreyContainer(
          height: 40.h,
          width: 306.w,
          borderRadius: 12.sp,
          padding: EdgeInsets.only(left: 20.w),
          backgroundColor: AppColors.darkConatinerColor.withOpacity(0.7),
          child: CustomTextFieldWidget(
              hintText: 'enter full name',
              hintColor: AppColors.hintFontColor,
              controller: nameController),
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          'Relationship',
          style: TextStyles.mainSubheadingStyle,
        ),
        SizedBox(
          height: 17.h,
        ),
        CustomGreyContainer(
          height: 40.h,
          width: 306.w,
          borderRadius: 12.sp,
          padding: EdgeInsets.only(left: 20.w),
          backgroundColor: AppColors.darkConatinerColor.withOpacity(0.7),
          child: CustomTextFieldWidget(
              hintText: 'select relationship',
              hintColor: AppColors.hintFontColor,
              controller: nameController),
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          'About',
          style: TextStyles.mainSubheadingStyle,
        ),
        SizedBox(
          height: 17.h,
        ),
        CustomGreyContainer(
          height: 117.h,
          width: 306.w,
          borderRadius: 12.sp,
          padding: EdgeInsets.only(left: 20.w),
          backgroundColor: AppColors.darkConatinerColor.withOpacity(0.7),
          child: CustomTextFieldWidget(
            hintText: 'type something......',
            hintColor: AppColors.hintFontColor,
            controller: nameController,
          ),
        )
      ],
    );
  }
}

class CustomBox extends StatelessWidget {
  const CustomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 109.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.chatScreenBox.path),
        ),
      ),
    );
  }
}

class CustomRealContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const CustomRealContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.7),
              Colors.white.withOpacity(0.65),
              Colors.white.withOpacity(0.6),
              Colors.white.withOpacity(0.55),
              Colors.white.withOpacity(0.4),
              Colors.white.withOpacity(0.35),
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.25),
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.198),
              Colors.white.withOpacity(0.197),
              Colors.white.withOpacity(0.196),
              Colors.white.withOpacity(0.195),
              Colors.white.withOpacity(0.194),
              Colors.white.withOpacity(0.16),
              Colors.white.withOpacity(0.17),
              Colors.white.withOpacity(0.18),
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.25),
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.4),
              Colors.white.withOpacity(0.5),
            ]),
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Center(
        child: Container(
          height: (height - 3.5),
          width: (width - 3.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp),
            color: Colors.black,
          ),
          child: child,
        ),
      ),
    );
  }
}

class CustomCircularContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const CustomCircularContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.7),
              Colors.white.withOpacity(0.65),
              Colors.white.withOpacity(0.6),
              Colors.white.withOpacity(0.55),
              Colors.white.withOpacity(0.4),
              Colors.white.withOpacity(0.35),
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.25),
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.198),
              Colors.white.withOpacity(0.197),
              Colors.white.withOpacity(0.196),
              Colors.white.withOpacity(0.195),
              Colors.white.withOpacity(0.194),
              Colors.white.withOpacity(0.16),
              Colors.white.withOpacity(0.17),
              Colors.white.withOpacity(0.18),
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.25),
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.4),
              Colors.white.withOpacity(0.5),
            ]),
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: Center(
        child: Container(
          height: (height - 3.5),
          width: (width - 3.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((height - 3.5) / 2),
            color: Colors.black,
          ),
          child: child,
        ),
      ),
    );
  }
}



/*

 Colors.white.withOpacity(0.65),
          Colors.white.withOpacity(0.6),
          Colors.white.withOpacity(0.5),
          Colors.white.withOpacity(0.4),
          Colors.white.withOpacity(0.35),
          Colors.white.withOpacity(0.3),
          Colors.white.withOpacity(0.25),
          Colors.white.withOpacity(0.2),
          Colors.white.withOpacity(0.198),
          Colors.white.withOpacity(0.197),
          Colors.white.withOpacity(0.196),
          Colors.white.withOpacity(0.195),
          Colors.white.withOpacity(0.194),
          Colors.white.withOpacity(0.16),
          Colors.white.withOpacity(0.17),
          Colors.white.withOpacity(0.18),
          Colors.white.withOpacity(0.2),
          Colors.white.withOpacity(0.25),
          Colors.white.withOpacity(0.3),
          Colors.white.withOpacity(0.4),
          Colors.white.withOpacity(0.5),

*/