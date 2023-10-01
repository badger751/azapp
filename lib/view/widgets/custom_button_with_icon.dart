// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:azapp/res/colors.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  final String? iconPath;
  final Color textColor;
  const CustomButtonWithIcon({
    Key? key,
    required this.buttonText,
    this.onTap,
    this.iconPath,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50.h,
        width: 310.w,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(25.sp),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconPath != null
                ? Image(
                    image: AssetImage(iconPath!),
                    height: 18.h,
                  )
                : const SizedBox.shrink(),
            if (iconPath != null)
              SizedBox(
                width: 10.w,
              ),
            Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
