import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:money_management_app/app/app.dart';

class BackgroundContainer extends StatefulWidget {
  const BackgroundContainer({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  State<BackgroundContainer> createState() => _BackgroundContainerState();
}

class _BackgroundContainerState extends State<BackgroundContainer>
    with SingleTickerProviderStateMixin {
  // Initialize the controller
  late final AnimatedMeshGradientController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    return Container(
      color: appColors.backgroundPrimaryLight9,
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Positioned.fill(
            child: AnimatedMeshGradient(
              colors: [
                appColors.gradientPrimary1,
                appColors.gradientPrimary2,
                appColors.gradientPrimary3,
                appColors.gradientPrimary4,
                // PrimaryColors.baseLightMode,
                // PrimaryColors.dark3LightMode,
                // PrimaryColors.dark1LightMode,
                // PrimaryColors.dark1LightMode,
                // Color(0xFF86AFF5),
                // Color(0xFF192DD9),
                // Color(0xFF395DDE),
                // Color(0xFF4A6DE1),
              ],
              options: AnimatedMeshGradientOptions(),
            ),
          ),
          if (widget.child != null) Center(child: widget.child!),
        ],
      ),
    );
  }
}
