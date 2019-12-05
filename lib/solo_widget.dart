import 'package:flutter/material.dart';

class SoloWidget extends StatelessWidget {

  SoloWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CustomPaint(painter: DrawCircle()),
      ),
    );
  }

}

class DrawCircle extends CustomPainter {
  Paint _paint;

  DrawCircle() {
    _paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, 0.0), 100.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}