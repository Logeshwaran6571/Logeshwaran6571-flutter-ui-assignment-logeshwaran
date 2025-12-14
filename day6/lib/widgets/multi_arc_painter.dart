import 'package:flutter/material.dart';
import 'dart:math';

double deg2rad(double deg) => deg * pi / 180.0;

/// Draws three concentric arcs:
///  - inner partial arc (light blue) between innerStartDeg -> innerEndDeg
///  - a full 360° track (light gray)
///  - outer gradient arc (drawn as two separate segments) using gradientColors
class MultiArcPainter extends CustomPainter {
  final double innerStartDeg;
  final double innerEndDeg;
  final Color innerColor;

  final Color trackColor;

  final double gradientStartDegA;
  final double gradientEndDegA;
  final double gradientStartDegB;
  final double gradientEndDegB;
  final List<Color> gradientColors;

  final double innerStrokeWidth;
  final double trackStrokeWidth;
  final double outerStrokeWidth;

  const MultiArcPainter({
    // inner
    required this.innerStartDeg,
    required this.innerEndDeg,
    required this.innerColor,
    // track
    required this.trackColor,
    // outer gradient segments
    required this.gradientStartDegA,
    required this.gradientEndDegA,
    required this.gradientStartDegB,
    required this.gradientEndDegB,
    required this.gradientColors,
    // widths
    this.innerStrokeWidth = 18,
    this.trackStrokeWidth = 22,
    this.outerStrokeWidth = 20,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final shortest = min(size.width, size.height);

    // Base outer rect (we'll deflate for inner rings)
    // Use a small padding to avoid clipping stroked arcs at the edges.
    final basePadding = max(outerStrokeWidth, trackStrokeWidth) / 2 + 2.0;
    final outerRect = Rect.fromCenter(
      center: Offset(cx, cy),
      width: shortest - basePadding * 2,
      height: shortest - basePadding * 2,
    );

    // Compute deflation for track and inner rects so arcs are concentric and spaced.
    final gapBetweenOuterAndTrack = 5.0;
    final trackInset =
        (outerStrokeWidth / 2) +
        (trackStrokeWidth / 2) +
        gapBetweenOuterAndTrack;
    final trackRect = outerRect.deflate(trackInset);

    final gapBetweenTrackAndInner = 5.0;
    final innerInset =
        trackInset +
        (trackStrokeWidth / 2) +
        (innerStrokeWidth / 2) +
        gapBetweenTrackAndInner;
    final innerRect = outerRect.deflate(innerInset);

    // Helper: convert degrees to radians with 0° pointing to top.
    double toRad(double deg) => deg2rad(deg - 90);

    // Helper: draw a positive clockwise sweep from startDeg -> endDeg.
    void drawArcSegment(
      Rect rect,
      double startDeg,
      double endDeg,
      Paint paint,
    ) {
      double sweepDeg = endDeg - startDeg;
      if (sweepDeg <= 0) sweepDeg += 360.0;
      final start = toRad(startDeg);
      final sweep = deg2rad(sweepDeg);
      canvas.drawArc(rect, start, sweep, false, paint);
    }

    // 1) Outer gradient arcs (two segments)
    // Create a sweep shader across the outerRect so colors flow along the circle.
    final sweepGradient = SweepGradient(
      startAngle: 0,
      endAngle: pi * 2,
      colors: gradientColors,
      tileMode: TileMode.clamp,
    );

    final outerPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = outerStrokeWidth
      ..shader = sweepGradient.createShader(outerRect);

    drawArcSegment(outerRect, gradientStartDegA, gradientEndDegA, outerPaint);
    drawArcSegment(outerRect, gradientStartDegB, gradientEndDegB, outerPaint);

    // 2) Middle full track (360°)
    final trackPaint = Paint()
      ..color = trackColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = trackStrokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(trackRect, deg2rad(-90), deg2rad(360), false, trackPaint);

    // 3) Inner light-blue partial arc
    final innerPaint = Paint()
      ..color = innerColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = innerStrokeWidth
      ..strokeCap = StrokeCap.round;

    drawArcSegment(innerRect, innerStartDeg, innerEndDeg, innerPaint);
  }

  @override
  bool shouldRepaint(covariant MultiArcPainter oldDelegate) => false;
}
