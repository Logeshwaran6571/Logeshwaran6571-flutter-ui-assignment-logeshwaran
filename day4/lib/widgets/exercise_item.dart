import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 0.906),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  index,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(Icons.more_horiz, size: 22),
            ],
          ),
          const SizedBox(height: 16),

          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF94C7DE),
                ),
                child: Icon(
                  Icons.fitness_center,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 12),

              Container(
                // color: Colors.red,
                width: 136,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 84, 83, 83),
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          progress,
                          style: const TextStyle(
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
                                style: const TextStyle(
                                  fontSize: 10,
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Time",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12),

              Container(
                width: 38,
                height: 38,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
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
