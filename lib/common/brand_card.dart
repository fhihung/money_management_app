// import 'package:flutter/material.dart';
// import 'package:shipper_app/common/common.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// import '../resources/generated/assets.gen.dart';
//
// class BrandCard extends StatelessWidget {
//   const BrandCard({
//     super.key,
//     this.onTap,
//     this.showBorder = true,
//     this.image,
//     this.title = '',
//     this.description = '',
//   });
//
//   final void Function()? onTap;
//   final bool showBorder;
//   final String? image;
//   final String title;
//   final String description;
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return GestureDetector(
//       onTap: onTap,
//       child: RoundedContainer(
//         padding: const EdgeInsets.all(AppSizes.sm),
//         showBorder: showBorder,
//         backgroundColor: Colors.transparent,
//         child: Row(
//           children: [
//             /// Icon
//             CircularImage(
//               padding: 2,
//               height: 30,
//               width: 30,
//               image: image ?? Assets.icons.categories.icons8SparklingDiamond64.path,
//               backgroundColor: Colors.transparent,
//               overlayColor: dark ? Colors.white : Colors.black,
//             ),
//             const SizedBox(
//               width: AppSizes.spaceBtwItems / 2,
//             ),
//
//             /// Text
//             Expanded(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: Theme.of(context).textTheme.titleLarge,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   Text(
//                     description,
//                     overflow: TextOverflow.ellipsis,
//                     style: Theme.of(context).textTheme.labelMedium,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
