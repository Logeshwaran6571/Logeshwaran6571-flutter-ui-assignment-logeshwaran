import 'package:flutter/material.dart';
import 'colors.dart';
import 'top_bar.dart';
import 'workout_header.dart';

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      margin: const EdgeInsets.symmetric(vertical: 24),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(40),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TopBar(),
          SizedBox(height: 24),
          WorkoutHeader(),
          SizedBox(height: 200),
        ],
      ),
    );
  }
}
