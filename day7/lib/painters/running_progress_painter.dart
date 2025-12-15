import 'dart:math';
import 'package:flutter/material.dart';
import '../constants/progress_constants.dart';

class RunningProgressPainter extends CustomPainter {
  double degToRad(double deg) => deg * pi / 180;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    // Radii
    final innerRadius = size.width * 0.30;
    final middleRadius = size.width * 0.35;
    final outerRadius = size.width * 0.40;

    // Stroke widths
    final innerStroke = size.width * 0.040;
    final middleStroke = size.width * 0.040;
    final outerStroke = size.width * 0.040;

    // =========================
    // Ring 1 — Inner Progress
    // =========================
    final innerPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = innerStroke;

    // Grey arc
    innerPaint.color = ProgressColors.innerGrey;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: innerRadius),
      degToRad(270),
      degToRad(120),
      false,
      innerPaint,
    );

    // Blue arc
    innerPaint.color = ProgressColors.innerBlue;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: innerRadius),
      degToRad(30),
      degToRad(240),
      false,
      innerPaint,
    );

    // =========================
    // Ring 2 — Faded Ring
    // =========================
    final fadedPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = middleStroke
      ..color = ProgressColors.fadedGrey;

    // 300° arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: middleRadius),
      degToRad(0),
      degToRad(360),
      false,
      fadedPaint,
    );

    // =========================
    // Ring 3 — Highlight Ring
    // =========================
    final outerRect = Rect.fromCircle(center: center, radius: outerRadius);

    //Small arc
    final greenDotPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = outerStroke
      ..color = ProgressColors.green;

    canvas.drawArc(outerRect, degToRad(337), degToRad(1), false, greenDotPaint);

    // Gradient arc

    final greenArcPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = outerStroke
      ..color = ProgressColors.green;

    canvas.drawArc(
      outerRect,
      degToRad(345), // start
      degToRad(55), // green length
      false,
      greenArcPaint,
    );

    final orangeArcPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = outerStroke
      ..color = ProgressColors.orange;

    canvas.drawArc(
      outerRect,
      degToRad(30), // overlaps slightly
      degToRad(35), // short orange tail
      false,
      orangeArcPaint,
    );

    // Inactive grey arc
    final inactivePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = outerStroke
      ..color = Color.fromARGB(255, 235, 235, 235);

    canvas.drawArc(
      outerRect,
      degToRad(100),
      degToRad(80),
      false,
      inactivePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
