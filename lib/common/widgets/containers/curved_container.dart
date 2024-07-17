import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/common/common.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: Container(
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
      ),
    );
  }
}
