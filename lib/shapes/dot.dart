import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    Key? key,
    required this.dotSize,
    required this.color,
  }) : super(key: key);

  final double dotSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      // size: Size.fromRadius(dotSize-7.5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: color!.withOpacity(0.1),
              offset: const Offset(1, 1),
              blurRadius: dotSize,
              spreadRadius: dotSize,
            ),
          ],
        ),
      ),
    );
  }
}
