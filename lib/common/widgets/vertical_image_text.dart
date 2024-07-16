import 'package:flutter/cupertino.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/common.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    required this.text,
    super.key,
    this.image,
    this.textColor,
    this.backgroundColor,
    this.isIcon = false,
    this.icon,
    this.onTap,
  });

  final String? image;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final bool isIcon;
  final Widget? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircularImage(
            isIcon: isIcon,
            image: image ?? Assets.images.products.tomiDogfood.path,
            backgroundColor: backgroundColor ?? appColors.backgroundGray7,
            icon: icon, // Pass the icon parameter
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems / 2,
          ),
          Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor ?? appColors.textBlackDarkVersion), // Ensure text color can be customized
          ),
        ],
      ),
    );
  }
}
