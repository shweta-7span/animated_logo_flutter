import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShapeBuilder extends ShapeBorder {
  final bool isOpposite;

  const ShapeBuilder({
    this.isOpposite = false,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    // throw UnimplementedError();

    if (isOpposite) {
      return Path()
        ..moveTo(rect.topCenter.dx, rect.topCenter.dy)
        ..lineTo(rect.bottomRight.dx, rect.bottomRight.dy)
        ..lineTo(rect.bottomLeft.dx, rect.bottomLeft.dy);
    } else {
      return Path()
        ..moveTo(rect.topRight.dx, rect.topRight.dy)
        ..lineTo(rect.topLeft.dx, rect.topLeft.dy)
        ..lineTo(rect.bottomCenter.dx, rect.bottomCenter.dy);
    }
  }

  @override
  ShapeBorder scale(double t) {
    throw UnimplementedError();
  }
}
