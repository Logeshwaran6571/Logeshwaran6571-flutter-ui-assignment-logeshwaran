import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../painters/running_progress_painter.dart';

class MultiRing extends StatelessWidget {
  final bool showRunIcon;

  const MultiRing({super.key, required this.showRunIcon});

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
              if (showRunIcon)
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
