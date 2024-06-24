// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:shipper_app/common/common.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class QuantityCart extends StatelessWidget {
//   const QuantityCart({
//     required this.quantity,
//     super.key,
//     this.color = AppColors.white,
//   });
//   final int quantity;
//   final Color? color;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Stack(
//       children: [
//         IconButton(
//           icon: Icon(
//             Iconsax.shopping_bag,
//             color: color ?? (dark ? AppColors.white : AppColors.black),
//           ),
//           onPressed: () {},
//         ),
//         CommonBadge(
//           quantity: quantity,
//         ),
//       ],
//     );
//   }
// }
