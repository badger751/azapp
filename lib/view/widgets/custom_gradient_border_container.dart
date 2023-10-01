import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientBorderContainer extends StatelessWidget {
  const CustomGradientBorderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 332.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.images.geadientBorder.path,
          ),
        ),
      ),
      child: Center(
        child: Text(
          'She/her',
          style: TextStyles.buttonTextWhite15,
        ),
      ),
    );
  }
}
