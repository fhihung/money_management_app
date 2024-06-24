// import 'package:flutter/material.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class RoundedContainer extends StatelessWidget {
//   const RoundedContainer({
//     super.key,
//     this.width,
//     this.height,
//     this.radius = AppSizes.cardRadiusLg,
//     this.child,
//     this.showBorder = false,
//     this.backgroundColor = AppColors.white,
//     this.borderColor = AppColors.borderPrimary,
//     this.margin,
//     this.padding,
//   });
//   final double? width;
//   final double? height;
//   final double? radius;
//   final Widget? child;
//   final bool showBorder;
//   final Color backgroundColor;
//   final Color borderColor;
//   final EdgeInsetsGeometry? margin;
//   final EdgeInsetsGeometry? padding;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       margin: margin,
//       padding: padding,
//       decoration: BoxDecoration(
//         color: backgroundColor,
//         borderRadius: BorderRadius.circular(radius ?? 0),
//         border: showBorder
//             ? Border.all(
//                 color: borderColor,
//               )
//             : null,
//       ),
//       child: child,
//     );
//   }
// }
