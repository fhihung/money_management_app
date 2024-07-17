import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({
    super.key,
    this.icon,
    this.iconColor,
    this.subtitle,
    this.subtitleColor,
  });
  final IconData? icon;
  final Color? iconColor;
  final String? subtitle;
  final Color? subtitleColor;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(AppSpaces.space9),
          // padding: const EdgeInsets.all(16),

          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: appColors.backgroundGray7_2,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    icon ?? Iconsax.sms_tracking,
                    size: 48,
                    color: iconColor ?? appColors.backgroundDarkVersion,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  colorFilter: ColorFilter.mode(
                    appColors.backgroundDarkVersion,
                    BlendMode.srcIn,
                  ),
                  Assets.images.decor.path,
                  width: 200,
                ),
              ),
            ],
          ),
        ),
        Text(
          subtitle ?? '',
          style: AppTextStyles.bodyMd1.copyWith(
            color: subtitleColor ?? appColors.textGray3,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
