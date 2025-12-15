import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Text(
          "1:29:59",
          style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.bold),
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
        Text(
          "29",
          style: GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        SizedBox(
          width: 50,
          height: 30,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 196, 217, 223),
                ),
              ),

              SizedBox(width: 3),
              Container(
                width: 15,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 3),
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 196, 217, 223),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Image.asset("assets/icons/heart (1).png", width: 30, height: 30),
        const SizedBox(width: 4),
        Text(
          "98",
          style: GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.w600),
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
