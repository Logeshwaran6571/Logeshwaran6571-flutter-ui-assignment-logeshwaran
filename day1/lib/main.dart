import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/workout_card/workout_card.dart';
import 'components/workout_card/colors.dart';

void main() {
  runApp(const WorkoutApp());
}

class WorkoutApp extends StatelessWidget {
  const WorkoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Workout UI',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const WorkoutHomePage(),
    );
  }
}

class WorkoutHomePage extends StatelessWidget {
  const WorkoutHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Center(child: WorkoutCard()));
  }
}
