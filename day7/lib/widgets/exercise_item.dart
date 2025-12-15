import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseItem extends StatelessWidget {
  final String index;
  final String title;
  final String progress;
  final String improvement;
  final String time;

  const ExerciseItem({
    super.key,
    required this.index,
    required this.title,
    required this.progress,
    required this.improvement,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(34),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Exercise",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),

              SizedBox(width: 10),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 0.906),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  index,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),
              Icon(Icons.more_horiz, size: 22),
            ],
          ),

          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                color: Colors.white,
                
                child: Image.asset("assets/icons/barbell4.png"),
              ),
              const SizedBox(width: 12),

              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 84, 83, 83),
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          progress,
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),

                        Container(
                          padding: EdgeInsets.fromLTRB(0, 2, 5, 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(35, 187, 183, 183),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.arrow_drop_up,
                                size: 20,
                                color: Color.fromARGB(255, 92, 95, 92),
                              ),
                              Text(
                                improvement,
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 75, 77, 75),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Time",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 84, 83, 83),
                    ),
                  ),
                  Text(time, style: TextStyle(fontSize: 20)),
                ],
              ),

              Spacer(),

              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.fromBorderSide(
                    BorderSide(color: Colors.black),
                  ),
                ),
                child: const Icon(Icons.play_arrow_rounded, size: 24),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
