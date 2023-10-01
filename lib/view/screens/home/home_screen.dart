import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/screens/home/drawer_screen.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  GlobalKey<ScaffoldState> sckey = GlobalKey();

  void _showChatScreen(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height *
              0.8, // Adjust the height as needed
          decoration: BoxDecoration(color: Colors.red.withOpacity(0.02)),
          child: Column(
            children: [
              Text(
                'Chat Screen',
                style: TextStyle(fontSize: 20.sp),
              ),
              // Add your chat UI components here
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sckey,
      backgroundColor: AppColors.backgroundColor,
      drawer: const DrawerScreen(),
      body: Stack(children: [
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
              SizedBox(
                height: 21.h,
              ),
              Container(
                height: 600.h,
                width: 350.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  image: DecorationImage(
                      image: AssetImage(Assets.images.homescreenMen.path),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              Padding(
                padding: EdgeInsets.only(right: 18.0.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.chatScreen);
                  },
                  child: Stack(
                    children: [
                      Positioned(
                        // alignment: Alignment.bottomRight,
                        right: 0,
                        top: 6,
                        child: Container(
                          height: 40.h,
                          width: 218.w,
                          padding: EdgeInsets.only(left: 40.w, top: 9.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              border: Border.all(color: Colors.white)),
                          child: Text(
                            'Let\'s connect!',
                            style: TextStyles.homeScreenFont,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 50.h,
                          width: 50.h,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFAF40),
                              borderRadius: BorderRadius.circular(25.sp),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                              child: Icon(
                            Icons.message,
                            size: 24.sp,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Padding(
              //   padding: EdgeInsets.only(right: 18.w),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Container(
              //         height: 40.h,
              //         width: 218.w,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20.sp), border: Border.all(color: Colors.white)),
              //         child: Align(
              //           alignment: Alignment.bottomRight,
              //           child: Text('Sahil'),
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        )
      ]),
    );
  }
}
