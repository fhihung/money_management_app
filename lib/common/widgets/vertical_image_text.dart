// import 'package:flutter/material.dart';
// import 'package:shipper_app/common/common.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// import '../../resources/generated/assets.gen.dart';
//
// class VerticalImageText extends StatelessWidget {
//   const VerticalImageText({
//     required this.text,
//     this.image,
//     super.key,
//     this.textColor = AppColors.white,
//     this.backgroundColor = AppColors.white,
//     this.onTap,
//   });
//
//   final String text;
//   final String? image;
//   final Color? textColor;
//   final Color? backgroundColor;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircularImage(
//               image: image ?? Assets.images.products.tomiDogfood.path,
//               backgroundColor: backgroundColor,
//             ),
//             const SizedBox(
//               height: AppSizes.spaceBtwItems / 2,
//             ),
//             Expanded(
//               // Set a fixed width to constrain the text
//               child: Text(
//                 text,
//                 style: Theme.of(context).textTheme.labelMedium!.apply(
//                       color: textColor,
//                     ),
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.center, // Center align the text
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
