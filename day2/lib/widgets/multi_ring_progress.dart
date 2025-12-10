import 'dart:math' as math;
import 'package:flutter/material.dart';

class MultiRingProgress extends StatelessWidget {
  const MultiRingProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MultiRingPainter(),
      child: const SizedBox.expand(),
    );
  }
}

class _MultiRingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = math.min(size.width, size.height) / 2 - 8;

    final basePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16
      ..color = const Color(0xFFE5E5E5)
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, basePaint);

    final innerPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = const Color(0xFFE9F4FA)
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius - 12, innerPaint);

    final segmentPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    const start = -math.pi / 2;
    const sweep = 1.4 * math.pi;

    segmentPaint.color = const Color(0xFFB7D8E6);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius - 4),
        start, sweep * 0.55, false, segmentPaint);

    segmentPaint.color = const Color(0xFF7ABF4B);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius - 4),
        start + sweep * 0.55 + 0.08, sweep * 0.2, false, segmentPaint);

    segmentPaint.color = const Color(0xFFE39B53);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius - 4),
        start + sweep * 0.78 + 0.12, sweep * 0.18, false, segmentPaint);
  }

  @override
  bool shouldRepaint(_) => false;
}
