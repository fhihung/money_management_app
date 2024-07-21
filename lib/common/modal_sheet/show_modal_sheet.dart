import 'package:flutter/material.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class CommonModalSheet {
  static void show(BuildContext context, {required bool isFullScreen, required Widget child}) {
    final modalRoute = CupertinoModalSheetRoute<void>(
      swipeDismissible: true,
      builder: (context) {
        if (isFullScreen) {
          return FullScreenSheet(child: child);
        } else {
          return HalfScreenSheet(child: child);
        }
      },
    );

    Navigator.push(context, modalRoute);
  }
}

class FullScreenSheet extends StatelessWidget {
  const FullScreenSheet({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DraggableSheet(
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Material(child: child)),
    );
  }
}

class HalfScreenSheet extends StatelessWidget {
  const HalfScreenSheet({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DraggableSheet(
      initialExtent: const Extent.proportional(0.5),
      minExtent: const Extent.proportional(0.5),
      physics: const BouncingSheetPhysics(
        parent: SnappingSheetPhysics(),
      ),
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Material(child: child)),
    );
  }
}
