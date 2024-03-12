import 'package:flutter/material.dart';
import 'dart:math' as math;

class HalfCircularProgressIndicator extends StatelessWidget {
  final double value;
  final Color color;
  final double strokeWidth;

  const HalfCircularProgressIndicator({super.key,
    this.value = 0.0,
    this.color = Colors.blue,
    this.strokeWidth = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HalfCirclePainter(
        value: value,
        color: color,
        strokeWidth: strokeWidth,
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  final double value;
  final Color color;
  final double strokeWidth;

  HalfCirclePainter({
    required this.value,
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    // double sweepAngle = value * 2 * 3.14;
    double sweepAngle = value * math.pi;

    canvas.drawArc(
      Rect.fromLTWH(
        0.0,
        size.height - size.width / 2, // Adjusted the y position
        size.width,
        size.width,
      ),

      math.pi,
      sweepAngle,
      false,
      paint,
    );


    Offset lineStart = Offset(size.width / 2, size.height / 2 + size.width / 2);
    Offset lineEnd = Offset(size.width / 2 + 10, size.height / 2 + size.width / 2);
    canvas.drawLine(lineStart, lineEnd, paint);
  }


  @override
  bool shouldRepaint(HalfCirclePainter oldDelegate) {
    return oldDelegate.value != value || oldDelegate.color != color;
  }
}
