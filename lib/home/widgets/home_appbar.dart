import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/common.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return CommonAppBar(
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (child != null) child!,
        ],
      ),
      actions: const [
        NotificationWidget(),
      ],
    );
  }
}
