import 'package:flutter/material.dart';
import 'multi_arc_painter.dart';

class MultiRingProgress extends StatelessWidget {
  const MultiRingProgress({super.key});

  @override
  Widget build(BuildContext context) {
    // The parent SizedBox (in your code) controls final size (230x230).
    // We just expand to available space.
    return const SizedBox.expand(
      child: CustomPaint(
        // The painter reads size from the canvas to compute radii.
        painter: MultiArcPainter(
          // inner (light-blue) arc: 90deg -> 0deg (clockwise)
          innerStartDeg: 90,
          innerEndDeg: 0,
          innerColor: Color(0xFFBEE8FF),

          // middle full 360 degree track
          trackColor: Color(0xFFECECEC),

          // outer gradient segments: first 70->160, second 200->270
          gradientStartDegA: 70,
          gradientEndDegA: 160,
          gradientStartDegB: 200,
          gradientEndDegB: 270,
          gradientColors: [Color(0xFFF6A45D), Color(0xFF7BC043)],

          // stroke widths (tweak to match your screenshot)
          innerStrokeWidth: 10,
          trackStrokeWidth: 10,
          outerStrokeWidth: 10,
        ),
      ),
    );
  }
}
