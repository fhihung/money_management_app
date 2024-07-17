import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/utils/constants/colors.dart';

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
          icon: Image.asset(
            Assets.icons.regular.bell.path,
            color: appColors.backgroundWhite,
            width: 24,
            height: 24,
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
