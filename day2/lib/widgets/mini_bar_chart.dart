import 'package:flutter/material.dart';

class MiniBarChart extends StatelessWidget {
  const MiniBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    const active = Color(0xFF7ABF4B);
    const inactive = Colors.black87;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        _Bar(height: 12, color: inactive),
        SizedBox(width: 3),
        _Bar(height: 18, color: inactive),
        SizedBox(width: 3),
        _Bar(height: 24, color: active),
        SizedBox(width: 3),
        _Bar(height: 18, color: inactive),
        SizedBox(width: 3),
        _Bar(height: 14, color: inactive),
      ],
    );
  }
}

class _Bar extends StatelessWidget {
  final double height;
  final Color color;

  const _Bar({required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(999),
      ),
    );
  }
}
