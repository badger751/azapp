// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

class CustomGreyContainer extends StatelessWidget {
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final Widget child;
  Color? backgroundColor;

  CustomGreyContainer(
      {
    Key? key,
    required this.height,
      required this.width,
    required this.padding,
    required this.borderRadius,
      required this.child,
      this.backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor ?? const Color(0xffD9D9D9).withOpacity(0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        child: child);
  }
}
