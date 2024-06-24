// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class RoundedImage extends StatelessWidget {
//   const RoundedImage({
//     required this.imageUrl,
//     super.key,
//     this.border,
//     this.backgroundColor = AppColors.light,
//     this.fit = BoxFit.contain,
//     this.padding,
//     this.isNetworkImage = false,
//     this.onTap,
//     this.applyImageRadius = false,
//     this.borderRadius = AppSizes.md,
//     this.height,
//     this.width,
//     this.placeholderImage, // Add this parameter for placeholder image
//   });
//
//   final String imageUrl;
//   final double? height;
//   final double? width;
//   final bool applyImageRadius;
//   final BoxBorder? border;
//   final Color backgroundColor;
//   final BoxFit fit;
//   final EdgeInsetsGeometry? padding;
//   final bool isNetworkImage;
//   final VoidCallback? onTap;
//   final double borderRadius;
//   final ImageProvider? placeholderImage; // Placeholder image
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: width,
//         height: height,
//         padding: padding,
//         decoration: BoxDecoration(
//           border: border,
//           borderRadius: BorderRadius.circular(borderRadius),
//         ),
//         child: ClipRRect(
//           borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
//           child: isNetworkImage
//               ? Image.network(
//                   imageUrl,
//                   fit: fit,
//                   errorBuilder: (context, error, stackTrace) {
//                     // Display placeholder if image loading fails
//                     return placeholderImage != null
//                         ? Image(image: placeholderImage!)
//                         : Icon(Iconsax.warning_2, color: AppColors.error);
//                   },
//                 )
//               : Image(
//                   image: AssetImage(imageUrl) as ImageProvider,
//                   fit: fit,
//                 ),
//         ),
//       ),
//     );
//   }
// }
