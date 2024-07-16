import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    required this.image,
    super.key,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = AppSpaces.space4,
    this.isIcon = false,
    this.icon,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width;
  final double height;
  final double padding;
  final bool isIcon;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? Colors.black : Colors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isIcon && icon != null
            ? Center(child: icon)
            : Image(
                image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
                color: overlayColor,
                fit: fit,
              ),
      ),
    );
  }
}
