import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    return Container(
      color: appColors.backgroundPrimaryLight9,
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Image.asset(
            Assets.images.bgGradiante.path,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          if (child != null) Center(child: child!),
        ],
      ),
    );
  }
}
