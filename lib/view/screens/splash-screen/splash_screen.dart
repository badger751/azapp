import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/utils/route_name.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void offFromSplash() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.pushNamed(context, RouteName.signupScreen);
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    offFromSplash();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Expanded(
                child: Image.asset(
                  Assets.images.appBackground2.path,
                  fit: BoxFit.fill,
                ),
              )),
          Positioned(
              top: 70.h,
              left: 135.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 121.h,
                  ),
                  Text(
                    '?',
                    style: TextStyle(
                      fontSize: 300.sp,
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
