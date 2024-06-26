import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.backgroundColor,
  });
  final double width;
  final double height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.current.textBlackDarkVersion,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
