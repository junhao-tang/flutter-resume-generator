import 'package:flutter/material.dart';

class ScreenAdapterWidget extends StatelessWidget {
  final double expectedWidth;
  final double aspectRatio;
  final Widget child;

  const ScreenAdapterWidget({
    super.key,
    required this.child,
    required this.expectedWidth,
    required this.aspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: fix overflow yellow bar on debug
    return LayoutBuilder(
      builder: (context, constraints) {
        double scale = constraints.maxWidth / expectedWidth;
        if (aspectRatio * constraints.maxWidth > constraints.maxHeight) {
          scale = constraints.maxHeight / (aspectRatio * expectedWidth);
        }
        return UnconstrainedBox(
          child: Transform.scale(
            scale: scale,
            child: child,
          ),
        );
      },
    );
  }
}
