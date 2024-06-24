// import 'package:flutter/material.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class AppSocialButtons extends StatelessWidget {
//   const AppSocialButtons({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: dark ? AppColors.darkerGrey : AppColors.grey),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: IconButton(
//             icon: const Image(
//               width: AppSizes.iconMd,
//               height: AppSizes.iconMd,
//               image: AssetImage(TImages.google),
//             ),
//             onPressed: () {},
//           ),
//         ),
//         const SizedBox(width: AppSizes.spaceBtwItems),
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: dark ? AppColors.darkerGrey : AppColors.grey),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: IconButton(
//             icon: const Image(
//               width: AppSizes.iconMd,
//               height: AppSizes.iconMd,
//               image: AssetImage(TImages.facebook),
//             ),
//             onPressed: () {},
//           ),
//         ),
//       ],
//     );
//   }
// }
