import 'package:azapp/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenBackgroundWidget extends StatelessWidget {
  const ScreenBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Image.asset(Assets.images.appMainBackground.path)
          ],
        ));
  }
}
