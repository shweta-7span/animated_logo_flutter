import 'dart:async';

import 'package:animated_logo_flutter/shape/triangle_dots.dart';
import 'package:flutter/material.dart';

class AnimatedLogoScreen extends StatefulWidget {
  const AnimatedLogoScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedLogoScreen> createState() => _AnimatedLogoScreenState();
}

class _AnimatedLogoScreenState extends State<AnimatedLogoScreen> {
  final double shapeSize = 150;
  late double spaceBetweenTriangle;
  bool isChanged = false;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        isChanged = !isChanged;
      });
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    spaceBetweenTriangle = 0;

    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: const Text('7Span'),
      ),
      body: Stack(
        // clipBehavior: Clip.hardEdge,
        children: [
          for (double i = 1; i <= 10; i++)
            //1
            TriangleDots(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: true,
              horizontalSpace: 0 - 0.5,
              verticalSpace: 0,
              color: const Color(0xFFF52220),
            ),
          for (double i = 1; i <= 10; i++)
            //2
            TriangleDots(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: false,
              verticalSpace: 0,
              horizontalSpace:
                  (shapeSize / 10) * (1 + 0.2) + spaceBetweenTriangle,
              color: const Color(0xFFC30705),
            ),
          for (double i = 1; i <= 10; i++)
            //3
            TriangleDots(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: true,
              verticalSpace: 0,
              horizontalSpace:
                  (shapeSize / 10) * (5 + 0.4) + (spaceBetweenTriangle * 2),
              color: const Color(0xFFFE3F3C),
              // color: const Color(0xFFF52220),
            ),
          for (double i = 1; i <= 10; i++)
            //4
            TriangleDots(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: false,
              verticalSpace: 0,
              horizontalSpace:
                  (shapeSize / 10) * (6 + 0.6) + (spaceBetweenTriangle * 3),
              color: const Color(0xFFE31A1A),
              // color: const Color(0xFFC30705),
            ),
          for (double i = 1; i <= 10; i++)
            //5
            TriangleDots(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: true,
              verticalSpace:
                  (shapeSize / 10) * (4 + 0.3) + spaceBetweenTriangle,
              horizontalSpace:
                  (shapeSize / 10) * (3 + 0.05) + (spaceBetweenTriangle * 2),
              color: const Color(0xFFE01B1A),
              // color: const Color(0xFFF52220),
            ),
          for (double i = 1; i <= 10; i++)
            //6
            TriangleDots(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: false,
              verticalSpace:
                  (shapeSize / 10) * (4 + 0.3) + spaceBetweenTriangle,
              horizontalSpace:
                  (shapeSize / 10) * (4 + 0.35) + (spaceBetweenTriangle * 3),
              color: const Color(0xFFC30606),
              // color: const Color(0xFFC30705),
            ),
          for (double i = 1; i <= 10; i++)
            //7
            TriangleDots(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: false,
              verticalSpace:
                  (shapeSize / 10) * (8 + 0.6) + (spaceBetweenTriangle * 2),
              horizontalSpace:
                  (shapeSize / 10) * (2 + 0.05) + (spaceBetweenTriangle * 3),
              color: const Color(0xFFFE3F3C),
              // color: const Color(0xFFC30705),
            ),
        ],
      ),
    );
  }
}
