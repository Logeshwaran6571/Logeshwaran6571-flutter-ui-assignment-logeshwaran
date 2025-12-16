import 'package:flutter/material.dart';

class WorkoutTopBar extends StatelessWidget {
  final VoidCallback onEditPressed;

  const WorkoutTopBar({super.key, required this.onEditPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BackButtonWidget(),
          ActionButtons(onEditPressed: onEditPressed),
        ],
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset(
        "assets/icons/arrow-left.png",
        width: 42,
        height: 42,
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  final VoidCallback onEditPressed;

  const ActionButtons({super.key, required this.onEditPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Image.asset("assets/icons/star.png", width: 20, height: 20),
          const SizedBox(width: 10),

          GestureDetector(
            onTap: onEditPressed,
            child: Image.asset(
              "assets/icons/edit1.png",
              width: 40,
              height: 40,
            ),
          ),

          const SizedBox(width: 10),
          const Icon(Icons.more_horiz, size: 25),
        ],
      ),
    );
  }
}
