import 'package:flutter/material.dart';

class WorkoutStatsCard extends StatelessWidget {
  const WorkoutStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(34),
      ),
      child: Column(
        children: const [
          HeaderRow(),
          SizedBox(height: 18),
          MetricsRow(),
          SizedBox(height: 22),
          StopButton(),
        ],
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Exercise",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(240, 240, 240, 0.906),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Text(
            "1/8",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
        const Spacer(),
        const Text(
          "1:29:59",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class MetricsRow extends StatelessWidget {
  const MetricsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("VO₂", style: TextStyle(fontSize: 14)),
        const SizedBox(width: 4),
        const Text(
          "29",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        Image.asset("assets/icons/heart (1).png", width: 30, height: 30),
        const SizedBox(width: 4),
        const Text(
          "98",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class StopButton extends StatelessWidget {
  const StopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: const Color.fromARGB(181, 242, 182, 160),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/stop-button.png", width: 18, height: 18),
          const SizedBox(width: 8),
          const Text(
            "STOP",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
