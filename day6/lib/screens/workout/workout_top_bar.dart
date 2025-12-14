import 'package:flutter/material.dart';

class WorkoutTopBar extends StatelessWidget {
  const WorkoutTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [BackButton(), ActionButtons()],
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset("assets/icons/arrow-left.png", width: 42, height: 42),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Image.asset("assets/icons/star.png", width: 20, height: 20),
          const SizedBox(width: 20),
          Image.asset("assets/icons/edit.png", width: 23, height: 23),
          const SizedBox(width: 20),
          const Icon(Icons.more_horiz, size: 25),
        ],
      ),
    );
  }
}
