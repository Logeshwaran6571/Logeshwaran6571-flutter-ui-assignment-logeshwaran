import 'package:flutter/material.dart';
import 'screens/workout/workout_screen.dart';

void main() {
  runApp(const WorkoutApp());
}

class WorkoutApp extends StatelessWidget {
  const WorkoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorkoutScreen(),
    );
  }
}
