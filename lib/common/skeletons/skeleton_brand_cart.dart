import 'package:flutter/material.dart';
import 'package:money_management_app/utils/utils.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonBrandCard extends StatelessWidget {
  const SkeletonBrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[800]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[200]!,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        //
      ),
    );
  }
}
