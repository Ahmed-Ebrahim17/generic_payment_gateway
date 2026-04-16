import 'package:flutter/material.dart';

class DashLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpace;
  final double strokeWidth;

  DashLinePainter({
    this.color = Colors.grey,
    this.dashWidth = 6,
    this.dashSpace = 4,
    this.strokeWidth = 1.5,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double startX = 0;
    final y = size.height / 2;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, y), Offset(startX + dashWidth, y), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class DashLine extends StatelessWidget {
  final Color color;
  final double height;
  final double dashWidth;
  final double dashSpace;
  final double strokeWidth;

  const DashLine({
    super.key,
    this.color = Colors.grey,
    this.height = 1.5,
    this.dashWidth = 6,
    this.dashSpace = 4,
    this.strokeWidth = 1.5,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: DashLinePainter(
        color: color,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
        strokeWidth: strokeWidth,
      ),
    );
  }
}
