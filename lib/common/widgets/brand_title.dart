// import 'package:flutter/material.dart';
// import 'package:shipper_app/utils/utils.dart';
//
// class BrandTitle extends StatelessWidget {
//   const BrandTitle({
//     required this.title,
//     super.key,
//     this.color,
//     this.maxLines = 1,
//     this.textAlign = TextAlign.center,
//     this.textSize = TextSizes.small,
//   });
//
//   final String title;
//   final Color? color;
//   final int maxLines;
//   final TextAlign? textAlign;
//   final TextSizes textSize;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       title,
//       style: textSize == TextSizes.small
//           ? Theme.of(context).textTheme.labelMedium!.apply(
//                 color: color,
//               )
//           : textSize == TextSizes.medium
//               ? Theme.of(context).textTheme.bodyLarge!.apply(
//                     color: color,
//                   )
//               : textSize == TextSizes.large
//                   ? Theme.of(context).textTheme.titleLarge!.apply(
//                         color: color,
//                       )
//                   : Theme.of(context).textTheme.bodyMedium!.apply(
//                         color: color,
//                       ),
//       overflow: TextOverflow.ellipsis,
//       maxLines: maxLines,
//       textAlign: textAlign,
//     );
//   }
// }
