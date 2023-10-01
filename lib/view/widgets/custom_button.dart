// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  final String? iconPath;
  double? height;
  double? width;

  CustomButton({
    Key? key,
    required this.buttonText,
    this.onTap,
    this.iconPath,
    this.height,
    this.width,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 40.h,
        width: width ?? 310.w,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10.sp),
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
                style: TextStyles.buttonTextBlack18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
