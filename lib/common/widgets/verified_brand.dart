// import 'package:flutter/material.dart';
// import 'package:shipper_app/common/common.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class VerifiedBrand extends StatelessWidget {
//   const VerifiedBrand({
//     this.title = '',
//     super.key,
//     this.maxLines = 1,
//     this.textColor,
//     this.iconColor = AppColors.primary,
//     this.textAlign = TextAlign.center,
//     this.brandTextSize = TextSizes.small,
//     this.isVerified = true,
//   });
//
//   final String? title;
//   final int maxLines;
//   final Color? textColor;
//   final Color? iconColor;
//   final TextAlign? textAlign;
//   final TextSizes brandTextSize;
//   final bool isVerified;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       // mainAxisSize: MainAxisSize.max,
//       children: [
//         BrandTitle(
//           title: title!,
//           color: textColor,
//           maxLines: maxLines,
//           textAlign: textAlign,
//           textSize: brandTextSize,
//         ),
//         // const SizedBox(
//         //   width: AppSizes.xs,
//         // ),
//         // if (isVerified && title!.isNotEmpty)
//         //   Icon(
//         //     Iconsax.verify5,
//         //     size: 16,
//         //     color: iconColor,
//         //   ),
//       ],
//     );
//   }
// }
