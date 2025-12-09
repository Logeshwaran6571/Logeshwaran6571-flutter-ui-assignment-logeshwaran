import 'package:flutter/material.dart';
import 'colors.dart';

class StatBar extends StatelessWidget {
  final double height;
  final bool highlight;

  const StatBar({
    super.key,
    required this.height,
    required this.highlight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: highlight ? AppColors.green : AppColors.primary,
      ),
    );
  }
}
