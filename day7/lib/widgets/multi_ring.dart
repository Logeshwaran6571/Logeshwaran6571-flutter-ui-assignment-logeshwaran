import 'package:day7/painters/running_progress_painter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MultiRing extends StatelessWidget {
  const MultiRing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: const Size.square(240),
            painter: RunningProgressPainter(),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/icons/run.png", width: 33),
              ),
              const SizedBox(height: 4),
              const Text(
                "Running",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                "10km",
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
