import 'dart:math';
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({
    Key? key,
    required this.count,
    required this.width,
    required this.height,
    required this.isChanged,
  }) : super(key: key);

  final double count;
  final double width;

  final double height;

  final bool isChanged;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 2000),
      height: height / 10,
      width: width / 10,
      top: isChanged
          ? 0 + (MediaQuery.of(context).size.height / 2.5)
          : Random()
              .nextInt(MediaQuery.of(context).size.height.toInt())
              .toDouble(),
      left: isChanged
          ? count + (MediaQuery.of(context).size.width / 2.5)
          : Random()
              .nextInt(MediaQuery.of(context).size.width.toInt())
              .toDouble(),
      child: Container(
        height: height / 10,
        width: width / 10,
        decoration:
            const BoxDecoration(color: Colors.cyan, shape: BoxShape.circle),
      ),
    );
  }
}
