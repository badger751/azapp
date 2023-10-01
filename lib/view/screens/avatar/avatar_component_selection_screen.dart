import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/widgets/custom_button.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarComponentSelectionScreen extends StatefulWidget {
  const AvatarComponentSelectionScreen({super.key});

  @override
  State<AvatarComponentSelectionScreen> createState() =>
      _AvatarComponentSelectionScreenState();
}

class _AvatarComponentSelectionScreenState
    extends State<AvatarComponentSelectionScreen> {
  List<String> styles = [
    'Hairs',
    'Shoes',
    'Skirt',
    'Tops',
    'Bottoms',
    'Dresses',
    'Nail Paints'
  ];
  List<String> hairStyles = [
    Assets.images.hairstyle1.path,
    Assets.images.hairstyle2.path,
    Assets.images.hairstyle3.path,
    Assets.images.hairstyle4.path,
    Assets.images.hairstyle5.path,
    Assets.images.hairstyle6.path,
    Assets.images.hairstyle7.path,
    Assets.images.hairstyle8.path,
    Assets.images.hairstyle9.path,
    Assets.images.hairstyle1.path,
    Assets.images.hairstyle2.path,
    Assets.images.hairstyle3.path,
  ];
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Padding(
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
                            Navigator.pushNamed(context, RouteName.homeScreen);
                          },
                          child: Text(
                            'skip',
                            style: TextStyles.buttonTextWhite15
                                .copyWith(fontSize: 20.sp),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Container(
                    height: 350.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                      color: AppColors.containerBackgroundColor,
                      border: Border.all(
                          color: AppColors.whiteColor.withOpacity(0.2),
                          width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.sp),
                      ),
                    ),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Image(
                          image: AssetImage(Assets.images.f2h32.path),
                          fit: BoxFit.contain,
                        )),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.sp),
                          bottomLeft: Radius.circular(25.sp)),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 2.w, top: 2.h, bottom: 2.h),
                      decoration: BoxDecoration(
                        color: AppColors.darkConatinerColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.sp),
                            bottomLeft: Radius.circular(25.sp)),
                      ),
                      padding: EdgeInsets.only(left: 10.w),
                      child: Center(
                        child: ListView.builder(
                            itemCount: styles.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Center(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                child: Text(
                                  styles[index],
                                  style: TextStyles.buttonTextWhite15
                                      .copyWith(fontSize: 20.sp),
                                ),
                              ));
                            }),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: GridView.builder(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      itemCount: hairStyles.length,
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 92,
                            width: 90,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor.withOpacity(0.2),
                                border: Border.all(
                                  color: AppColors.whiteColor.withOpacity(0.5),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.sp))),
                            child: Center(
                              child: Image(
                                image: AssetImage(hairStyles[index]),
                                fit: BoxFit.cover,
                                height: 100.h,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 50.h,
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: CustomButton(
        buttonText: 'Next',
        onTap: () {
          Navigator.pushNamed(context, RouteName.homeScreen);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
