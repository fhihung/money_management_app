// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:shipper_app/common/common.dart';
// import 'package:shipper_app/resources/generated/assets.gen.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class ProductCardVertical extends StatelessWidget {
//   const ProductCardVertical({
//     this.image,
//     this.isFavorite = false,
//     this.brand = 'Lotteria',
//     this.discount,
//     this.price = '45.00',
//     this.title = 'Bulgogi Burger',
//     super.key,
//     this.isVerified,
//     this.onIconPressed,
//   });
//
//   final String? price;
//   final String? title;
//   final String? image;
//   final bool? isFavorite;
//   final String? brand;
//   final double? discount;
//   final bool? isVerified;
//   final VoidCallback? onIconPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         width: 180,
//         padding: const EdgeInsets.only(
//           top: AppSizes.md,
//         ),
//         decoration: BoxDecoration(
//           boxShadow: [
//             AppShadowStyles.verticalProductShadow,
//           ],
//           borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
//           color: dark ? AppColors.darkGrey : AppColors.white,
//         ),
//         child: Column(
//           children: [
//             /// Thumbnail, Wishlist Button, Discount Tag
//             RoundedContainer(
//               height: 180,
//               padding: const EdgeInsets.all(AppSizes.md),
//               backgroundColor: dark ? AppColors.dark : AppColors.light,
//               child: Stack(
//                 children: [
//                   /// Thumbnail Image
//                   RoundedImage(
//                     // isNetworkImage: true,
//                     // placeholderImage: AssetImage(
//                     //   Assets.images.products.tomiDogfood.path,
//                     // ),
//                     imageUrl: image ?? Assets.images.products.tomiDogfood.path,
//                     applyImageRadius: true,
//                   ),
//
//                   /// Sale Tag
//                   Positioned(
//                     top: 12,
//                     child: RoundedContainer(
//                       radius: AppSizes.sm,
//                       backgroundColor: AppColors.secondary.withOpacity(0.8),
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: AppSizes.sm,
//                         vertical: AppSizes.xs,
//                       ),
//                       child: Text(
//                         '25%',
//                         style: Theme.of(context).textTheme.labelLarge!.apply(
//                               color: AppColors.black,
//                             ),
//                       ),
//                     ),
//                   ),
//
//                   /// Favorite Button
//                   const Positioned(
//                     top: 0,
//                     right: 0,
//                     child: CircularIcon(
//                       icon: Iconsax.heart5,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: AppSizes.spaceBtwItems / 2,
//             ),
//
//             ///Details
//             Padding(
//               padding: const EdgeInsets.only(left: AppSizes.sm),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ProductTitle(
//                     title: title!,
//                     smallSize: true,
//                   ),
//                   const SizedBox(
//                     height: AppSizes.spaceBtwItems / 2,
//                   ),
//                   VerifiedBrand(
//                     title: brand,
//                   ),
//                 ],
//               ),
//             ),
//
//             const Spacer(),
//
//             ///Price
//             Padding(
//               padding: const EdgeInsets.only(left: AppSizes.sm),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ProductPrice(
//                     price: double.parse(price!).toStringAsFixed(2),
//                   ),
//                   Container(
//                     decoration: const BoxDecoration(
//                       color: AppColors.dark,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(
//                           AppSizes.cardRadiusMd,
//                         ),
//                         bottomRight: Radius.circular(
//                           AppSizes.productImageRadius,
//                         ),
//                       ),
//                     ),
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
