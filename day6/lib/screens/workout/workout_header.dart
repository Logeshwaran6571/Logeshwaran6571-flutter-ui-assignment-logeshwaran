import 'package:flutter/material.dart';
import '../../widgets/mini_bar_chart.dart';

class WorkoutHeader extends StatelessWidget {
  const WorkoutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 18, 18, 18),
      child: Row(
        children: const [
          WorkoutIcon(),
          SizedBox(width: 14),
          WorkoutInfo(),
          Spacer(),
          MiniBarChart(),
        ],
      ),
    );
  }
}

class WorkoutIcon extends StatelessWidget {
  const WorkoutIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(21),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(146, 155, 202, 224),
      ),
      child: Image.asset('assets/icons/bicep.png', width: 25, height: 25),
    );
  }
}

class WorkoutInfo extends StatelessWidget {
  const WorkoutInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Workout",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        Text(
          "90 min",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
