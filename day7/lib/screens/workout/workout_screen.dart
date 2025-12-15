import 'package:flutter/material.dart';
import '../../widgets/exercise_item.dart';
import 'workout_top_bar.dart';
import 'workout_header.dart';
import 'workout_stats_card.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            WorkoutTopBar(),
            WorkoutHeader(),
            SizedBox(height: 8),
            WorkoutStatsCard(),
            SizedBox(height: 10),
            ExerciseItem(
              index: "2/8",
              title: "Bench Press",
              progress: "3/10",
              improvement: "6%",
              time: "4min",
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 235, 235, 235),
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(70)),
        child: child,
      ),
    );
  }
}
