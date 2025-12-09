import 'package:flutter/material.dart';
import 'stat_bar.dart';

class MiniChart extends StatelessWidget {
  const MiniChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          StatBar(height: 14, highlight: false),
          StatBar(height: 20, highlight: true),
          StatBar(height: 10, highlight: false),
          StatBar(height: 18, highlight: true),
          StatBar(height: 12, highlight: false),
        ],
      ),
    );
  }
}
