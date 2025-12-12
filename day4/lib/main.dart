import 'package:flutter/material.dart';
import 'screens/workout_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const WorkoutApp());
}

class WorkoutApp extends StatelessWidget {
  const WorkoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WorkoutScreen(),
      theme: AppTheme.theme,
    );
  }
}
