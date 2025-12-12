import 'package:flutter/material.dart';

class MiniBarChart extends StatelessWidget {
  const MiniBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    const active = Color(0xFF7ABF4B);
    const inactive = Colors.black87;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Bar(height: 20, color: inactive),
        SizedBox(width: 6),
        Bar(height: 34, color: inactive),
        SizedBox(width: 6),
        Bar(height: 33, color: inactive),
        SizedBox(width: 6),
        Column(
          children: [
            Bar(height: 4, color: active),
            SizedBox(height: 3),
            Bar(height: 37, color: active),
          ],
        ),

        SizedBox(width: 6),

        Column(
          children: [
            Bar(height: 4, color: active),
            SizedBox(height: 3),
            Bar(height: 24, color: active),
          ],
        ),

        SizedBox(width: 6),
        Bar(height: 24, color: inactive),
        SizedBox(width: 6),
        Bar(height: 32, color: inactive),
      ],
    );
  }
}

class Bar extends StatelessWidget {
  final double height;
  final Color color;

  const Bar({super.key, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(1000),
      ),
    );
  }
}
