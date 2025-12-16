import 'package:flutter/material.dart';
import '../../widgets/exercise_item.dart';
import 'workout_top_bar.dart';
import 'workout_header.dart';
import 'workout_stats_card.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  bool showRunIcon = true;

  void toggleRunIcon() {
    setState(() {
      showRunIcon = !showRunIcon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ListView(
              padding: EdgeInsets.zero,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // 🔝 TOP SECTION
                      Column(
                        children: [
                          WorkoutTopBar(onEditPressed: toggleRunIcon),
                          const WorkoutHeader(),
                        ],
                      ),

                      // 🟦 MIDDLE SECTION
                      WorkoutStatsCard(showRunIcon: showRunIcon),

                      // 🔽 BOTTOM SECTION
                      Column(
                        children: const [
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
                    ],
                  ),
                ),
              ],
            );
          },
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
      color: const Color.fromARGB(255, 235, 235, 235),
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(70)),
        child: child,
      ),
    );
  }
}
