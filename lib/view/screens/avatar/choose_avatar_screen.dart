import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/widgets/custom_button.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseAvatarScreen extends StatefulWidget {
  const ChooseAvatarScreen({super.key});

  @override
  State<ChooseAvatarScreen> createState() => _ChooseAvatarScreenState();
}

class _ChooseAvatarScreenState extends State<ChooseAvatarScreen> {
  List<String> images = [
    Assets.images.femaleAvatar1.path,
    Assets.images.completeOutfit.path,
    Assets.images.female3.path,
    Assets.images.female4.path,
    Assets.images.female5.path,
    Assets.images.female6.path,
    Assets.images.male2h1.path,
    Assets.images.maleh1.path,
    Assets.images.maleh2.path,
    Assets.images.maleh4.path,
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          const ScreenBackgroundWidget(),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image(
                      image: AssetImage(Assets.icons.backButtonIcon.path),
                      height: 39.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Choose your Avatar',
                      style: TextStyles.mainSubheadingStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CarouselSlider(
                  items: images.map(
                    (e) {
                      return Container(
                        decoration: BoxDecoration(
                          color:
                              _currentIndex == images.indexOf(e) ? AppColors.darkConatinerColor.withOpacity(0.5) : null,
                          borderRadius: BorderRadius.circular(16.0.sp),
                          border: _currentIndex == images.indexOf(e)
                              ? Border.all(color: AppColors.whiteColor.withOpacity(0.2), width: 2.0)
                              : null,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h, right: 5.w, left: 5.w),
                          child: Image(
                            image: AssetImage(e),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  options: CarouselOptions(
                    height: 500.0,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 6,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: false,
                    onPageChanged: ((index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
                    viewportFraction: 0.6,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Center(
                  child: CustomButton(
                    buttonText: 'Next',
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.avatarComponentSelectionScreen);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
