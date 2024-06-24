// import 'package:flutter/material.dart';
// import 'package:shipper_app/common/common.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class CommonSectionHeading extends StatelessWidget {
//   const CommonSectionHeading({
//     required this.title,
//     this.showCartButton = false,
//     super.key,
//     this.onPressed,
//     this.showTextButton = true,
//     this.textButton = 'View All',
//     this.color = Colors.white,
//   });
//   final String title;
//   final void Function()? onPressed;
//   final bool showTextButton;
//   final bool showCartButton;
//   final String textButton;
//   final Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title,
//           style: Theme.of(context).textTheme.headlineSmall!.apply(color: color),
//           maxLines: 3,
//           overflow: TextOverflow.ellipsis,
//         ),
//         if (showTextButton) ...[
//           // const SizedBox(width: AppSizes.spaceBtwItems),
//           TextButton(
//             onPressed: onPressed,
//             child: Text(
//               textButton,
//             ),
//           ),
//         ],
//         if (showCartButton) ...[
//           // const SizedBox(width: AppSizes.spaceBtwItems),
//           const Padding(
//             padding: EdgeInsets.only(right: AppSizes.defaultSpace),
//             child: QuantityCart(quantity: 3),
//           ),
//         ],
//       ],
//     );
//   }
// }
