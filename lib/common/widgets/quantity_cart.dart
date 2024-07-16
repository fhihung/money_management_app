import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/common/widgets/common_badge.dart';
import 'package:money_management_app/utils/constants/colors.dart';
import 'package:money_management_app/utils/theme/app_colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    // required this.quantity,
    super.key,
    this.color = NeutralColors.white,
  });
  // final int quantity;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Iconsax.notification,
            color: color ?? appColors.backgroundWhite,
          ),
          onPressed: () {},
        ),
        const CommonBadge(
            // quantity: quantity,
            ),
      ],
    );
  }
}
