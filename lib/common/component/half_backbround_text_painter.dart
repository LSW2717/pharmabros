import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/common/const/typography.dart';

class HalfBackgroundTextPainter extends CustomPainter {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  HalfBackgroundTextPainter(
    this.text,
    this.backgroundColor,
    this.textColor,
  );

  @override
  void paint(Canvas canvas, Size size) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: headerText3,
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    final textWidth = textPainter.width;
    final textHeight = textPainter.height;

    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    canvas.drawRect(
      Rect.fromLTWH(-10, textHeight/2, textWidth + 20, textHeight/2),
      paint,
    );

    textPainter.paint(canvas, Offset(0, 0));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
