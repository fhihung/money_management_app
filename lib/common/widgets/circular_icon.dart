// import 'package:flutter/material.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class CircularIcon extends StatelessWidget {
//   const CircularIcon({
//     required this.icon,
//     super.key,
//     this.width,
//     this.height,
//     this.size = AppSizes.lg,
//     this.color,
//     this.backgroundColor,
//     this.onPressed,
//   });
//   final double? width;
//   final double? height;
//   final double? size;
//   final IconData icon;
//   final Color? color;
//   final Color? backgroundColor;
//   final VoidCallback? onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(100),
//         color: backgroundColor != null
//             ? backgroundColor!
//             : dark
//                 ? AppColors.black.withOpacity(0.9)
//                 : AppColors.white.withOpacity(0.9),
//       ),
//       child: IconButton(
//         onPressed: onPressed,
//         icon: Icon(
//           icon,
//           color: color,
//           size: size,
//         ),
//       ),
//     );
//   }
// }
