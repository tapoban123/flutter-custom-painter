import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class HomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    paint.color = Colors.black;
    paint.strokeWidth = 2;
    // Drawing a line
    canvas.drawLine(Offset.zero, Offset(size.width, 0), paint);

    paint.style = PaintingStyle.stroke;
    // Drawing a Circle
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 40, paint);

    // Drawing a Rect
    canvas.drawRect(
        Rect.fromCenter(
          center: center,
          width: size.width / 2,
          height: size.height / 2,
        ),
        paint);
    canvas.drawRect(
      const Rect.fromLTRB(0, 0, 120, 100),
      paint,
    );

    // Draw a Oval
    canvas.drawOval(
      Rect.fromCenter(
          center: center, width: size.width / 2, height: size.height),
      paint,
    );

    // Draw a rectangle with rounded corners.
    canvas.drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromCircle(center: center, radius: 15),
          bottomLeft: const Radius.circular(20),
          bottomRight: const Radius.circular(20),
        ),
        paint);

    // Draws the difference of two rounded rectangles.
    // Outer RRect should be bigger than inner RRect
    paint.style = PaintingStyle.fill;
    canvas.drawDRRect(
        RRect.fromRectXY(
          const Rect.fromLTRB(10, 20, 100, 200),
          75,
          25,
        ),
        RRect.fromRectXY(
          const Rect.fromLTRB(20, 30, 100, 180),
          75,
          25,
        ),
        paint);

    // Paint the canvas with solid color.
    // canvas.drawColor(Colors.yellow, BlendMode.src);

    // Fill only a specified portion of the screen with paint colors.
    canvas.clipRect(Offset.zero & size);

    // Paint the canvas with gradient.
    paint.shader = ui.Gradient.linear(
      const Offset(0, 0),
      Offset(size.width, size.height),
      [
        Colors.purple,
        Colors.green,
      ],
    );

    // canvas.drawPaint(paint);

    // Drawing points on canvas
    List<Offset> points = [
      Offset.zero,
      Offset(size.width, 0),
      Offset(size.width / 2, size.height / 2),
      Offset.zero,
    ];
    canvas.drawPoints(ui.PointMode.polygon, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
