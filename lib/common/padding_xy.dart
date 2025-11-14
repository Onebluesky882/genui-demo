import 'package:flutter/material.dart';

class PaddingXY extends StatelessWidget {
  final Widget child;
  final double? paddingX;
  final double? paddingY;

  const PaddingXY({
    super.key,
    required this.child,
    this.paddingY,
    this.paddingX,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingX ?? 0,
        right: paddingX ?? 0,
        top: paddingY ?? 0,
        bottom: paddingY ?? 0,
      ),
      child: child,
    );
  }
}
