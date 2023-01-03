import 'dart:async';

import 'package:animated_logo_flutter/widgets/triangle.dart';
import 'package:flutter/material.dart';

class AnimatedLogoScreen extends StatefulWidget {
  const AnimatedLogoScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedLogoScreen> createState() => _AnimatedLogoScreenState();
}

class _AnimatedLogoScreenState extends State<AnimatedLogoScreen> {
  final double shapeSize = 180;
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
    spaceBetweenTriangle = 4;

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
            Triangle(
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
            Triangle(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: false,
              verticalSpace: 0-2,
              horizontalSpace:
                  (shapeSize / 10) * (0.45 /*+ 0.2*/) + spaceBetweenTriangle ,
              color: const Color(0xFFC30705),
            ),
          for (double i = 1; i <= 10; i++)
            //3
            Triangle(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: true,
              verticalSpace: 0,
              horizontalSpace:
                  (shapeSize / 10) * (3.92 /*+ 0.4*/) + (spaceBetweenTriangle * 2),
              color: const Color(0xFFFE3F3C),
              // color: const Color(0xFFF52220),
            ),
          for (double i = 1; i <= 10; i++)
            //4
            Triangle(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: false,
              verticalSpace: 0-2,
              horizontalSpace:
                  (shapeSize / 10) * (4.38 /*+ 0.6*/) + (spaceBetweenTriangle * 3),
              color: const Color(0xFFE31A1A),
              // color: const Color(0xFFC30705),
            ),
          for (double i = 1; i <= 10; i++)
            //5
            Triangle(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: true,
              verticalSpace:
                  (shapeSize / 10) * (4.1 /*+ 0.3*/) + spaceBetweenTriangle,
              horizontalSpace:
                  (shapeSize / 10) * (1.68/* + 0.05*/) + (spaceBetweenTriangle * 2),
              color: const Color(0xFFE01B1A),
              // color: const Color(0xFFF52220),
            ),
          for (double i = 1; i <= 10; i++)
            //6
            Triangle(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: false,
              verticalSpace:
                  (shapeSize / 10) * (4.04 /*+ 0.3*/) + spaceBetweenTriangle,
              horizontalSpace:
                  (shapeSize / 10) * (2.19 /*+ 0.35*/) + (spaceBetweenTriangle * 3),
              color: const Color(0xFFC30606),
              // color: const Color(0xFFC30705),
            ),
          for (double i = 1; i <= 10; i++)
            //7
            Triangle(
              count: i,
              shapeSize: shapeSize,
              isChanged: isChanged,
              isOpposite: false,
              verticalSpace:
                  (shapeSize / 10) * (8.16 /*+ 0.6*/) + (spaceBetweenTriangle * 2),
              horizontalSpace:
                  (shapeSize / 10) * (-0.01 /*+ 0.05*/) + (spaceBetweenTriangle * 3),
              color: const Color(0xFFFE3F3C),
              // color: const Color(0xFFC30705),
            ),
        ],
      ),
    );
  }
}
