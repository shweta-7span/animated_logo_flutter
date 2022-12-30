import 'dart:math';
import 'package:flutter/material.dart';

class TriangleDots extends StatelessWidget {
  const TriangleDots({
    Key? key,
    required this.count,
    required this.shapeSize,
    required this.isChanged,
    required this.isOpposite,
    required this.horizontalSpace,
    required this.verticalSpace,
    required this.color,
  }) : super(key: key);

  final double count;
  final double shapeSize;
  final bool isChanged;
  final bool isOpposite;
  final double horizontalSpace;
  final double verticalSpace;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    late double y;
    late double x;

    double dotSize = shapeSize / 10;

    /*if (count <= 4) {
      y= 0;
      x = dotSize * count;
      debugPrint('Y: $y');
      debugPrint('X: $x\n');
    } else if (count <= 7) {
      y= dotSize;
      x = (dotSize * count) - (35 * (shapeSize / 100));
      debugPrint('Y: $y');
      debugPrint('X: $x\n');
    } else if (count <= 9) {
      y= dotSize * 2;
      x = (dotSize * count) - (60 * (shapeSize / 100));
      debugPrint('Y: $y');
      debugPrint('X: $x\n');
    } else if (count <= 10) {
      y= dotSize * 3;
      x = (dotSize * count) - (75 * (shapeSize / 100));
      debugPrint('Y: $y');
      debugPrint('X: $x\n');
    } else {
      y= 0;
      x = 0;
    }*/

    if (isOpposite) {
      int firstRowDots = 1;
      int secondRowDots = 3;
      int thirdRowDots = 6;
      int fourthRowDots = 10;

      if (count <= firstRowDots) {
        y = 0;
        x = dotSize * count;
        debugPrint('Y: $y');
        debugPrint('X: $x\n');
      } else if (count <= secondRowDots) {
        y = dotSize;
        x = dotSize * (count - firstRowDots) - (dotSize / 2);
        debugPrint('Y: $y');
        debugPrint('X: $x\n');
      } else if (count <= thirdRowDots) {
        y = dotSize * 2;
        x = dotSize * (count - secondRowDots) - dotSize;
        debugPrint('Y: $y');
        debugPrint('X: $x\n');
      } else if (count <= fourthRowDots) {
        y = dotSize * 3;
        x = dotSize * (count - thirdRowDots) - dotSize - (dotSize / 2);
        debugPrint('Y: $y');
        debugPrint('X: $x\n');
      } else {
        y = 0;
        x = 0;
      }
    } else {
      int firstRowDots = 4;
      int secondRowDots = 7;
      int thirdRowDots = 9;
      int fourthRowDots = 10;

      if (count <= firstRowDots) {
        y = 0;
        x = dotSize * count;
        debugPrint('Y: $y');
        debugPrint('X: $x\n');
      } else if (count <= secondRowDots) {
        y = dotSize;
        x = dotSize * (count - firstRowDots) + (dotSize / 2);
        debugPrint('Y: $y');
        debugPrint('X: $x\n');
      } else if (count <= thirdRowDots) {
        y = dotSize * 2;
        x = dotSize * (count - secondRowDots) + dotSize;
        debugPrint('Y: $y');
        debugPrint('X: $x\n');
      } else if (count <= fourthRowDots) {
        y = dotSize * 3;
        x = dotSize * (count - thirdRowDots) + dotSize + (dotSize / 2);
        debugPrint('Y: $y');
        debugPrint('X: $x\n');
      } else {
        y = 0;
        x = 0;
      }
    }

    return AnimatedPositioned(
      curve: Curves.easeInOutSine,
      duration: const Duration(milliseconds: 3000),
      height: dotSize,
      width: dotSize,
      top: isChanged
          ? y + (MediaQuery.of(context).size.height / 3) + verticalSpace
          : Random()
              .nextInt(MediaQuery.of(context).size.height.toInt())
              .toDouble(),
      left: isChanged
          ? x + (MediaQuery.of(context).size.width / 3.3) + horizontalSpace
          : Random()
              .nextInt(MediaQuery.of(context).size.width.toInt())
              .toDouble(),
      child: SizedBox.fromSize(
        // size: Size.fromRadius(dotSize-7.5),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: color!.withOpacity(0.1),
                offset:const Offset(1,1),
                blurRadius: dotSize,
                spreadRadius: dotSize,
              ),
            ],
          ),
        ),
      ),
      /* CustomPaint(
        painter: TrianglePainter(
          strokeColor: color ?? Colors.red,
          paintingStyle: PaintingStyle.fill,
        ),
        child: SizedBox(
          height: dotSize,
          width: dotSize,
        ),
      ),*/
    );
  }
}
