// import 'package:flutter/material.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class SearchContainer extends StatelessWidget {
//   const SearchContainer({
//     required this.text,
//     super.key,
//     this.icon,
//     this.showBackground = true,
//     this.showBorder = true,
//     this.onTap,
//     this.padding = const EdgeInsets.all(AppSizes.defaultSpace),
//   });
//   final String text;
//   final IconData? icon;
//   final bool showBackground;
//   final bool showBorder;
//   final VoidCallback? onTap;
//   final EdgeInsetsGeometry padding;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: padding,
//         child: Container(
//           width: TDeviceUtils.getScreenWidth(context),
//           padding: const EdgeInsets.all(AppSizes.md),
//           decoration: BoxDecoration(
//             color: showBackground
//                 ? dark
//                     ? AppColors.dark
//                     : AppColors.white
//                 : Colors.transparent,
//             borderRadius: BorderRadius.circular(
//               AppSizes.cardRadiusLg,
//             ),
//             border: Border.all(
//               color: AppColors.grey,
//             ),
//           ),
//           child: Row(
//             children: [
//               Icon(
//                 icon,
//                 color: AppColors.darkGrey,
//               ),
//               const SizedBox(width: AppSizes.spaceBtwItems),
//               Text(
//                 text,
//                 style: Theme.of(context).textTheme.bodySmall,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
