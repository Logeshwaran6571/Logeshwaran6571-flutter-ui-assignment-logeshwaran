import 'package:flutter/material.dart';
// import '../theme/app_theme.dart';
// import '../widgets/circle_icon_button.dart';
import '../widgets/mini_bar_chart.dart';
// import '../widgets/multi_ring_progress.dart';
import '../widgets/exercise_item.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 217, 223),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),

          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(240, 240, 240, 0.906),
              borderRadius: BorderRadius.circular(60),
            ),

            child: Column(
              children: [
                //------ ------------- HEADER ROW ------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // left icon
                    // CircleIconButton(icon: Icons.arrow_back),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        "assets/icons/arrow-left.png",
                        width: 42,
                        height: 42,
                      ),
                    ),

                    // right icons
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/icons/star.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            "assets/icons/edit.png",
                            width: 23,
                            height: 23,
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.more_horiz,
                            size: 25,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                // -------------------- Workout header--------------------------
                Container(
                  padding: EdgeInsets.fromLTRB(3, 18, 18, 18),

                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(21),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(146, 155, 202, 224),
                        ),
                        child: Image.asset(
                          'assets/icons/bicep.png',
                          width: 22,
                          height: 22,
                        ),
                      ),

                      SizedBox(width: 14),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Workout",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "90 min",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),
                      const MiniBarChart(),
                    ],
                  ),
                ),

                const SizedBox(height: 8),

                // ---------- Main running card ----------
                Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Exercise",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 10),
                          SmallTag(text: "1/8"),
                          Spacer(),
                          Text(
                            "1:29:59",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      // SizedBox(
                      //   child: Stack(
                      //     alignment: Alignment.center,
                      //     children: [
                      //       MultiRingProgress(),
                      //       Column(
                      //         mainAxisSize: MainAxisSize.min,
                      //         children: [
                      //           Container(
                      //             padding: EdgeInsets.all(12),
                      //             decoration: BoxDecoration(
                      //               color: Colors.black,
                      //               shape: BoxShape.circle,
                      //             ),
                      //             child: const Icon(
                      //               Icons.directions_run,
                      //               color: Color(0xFFF2C9B2),
                      //               size: 25,
                      //             ),
                      //           ),
                      //           SizedBox(height: 9),
                      //           Text(
                      //             "Running",
                      //             style: TextStyle(
                      //               fontSize: 13,
                      //               fontWeight: FontWeight.w500,
                      //             ),
                      //           ),
                      //           Text(
                      //             "10km",
                      //             style: TextStyle(
                      //               fontSize: 25,
                      //               // fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 18),

                      Row(
                        children: [
                          Text(
                            "VO₂",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "29",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
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
                          Spacer(),
                          Image.asset(
                            "assets/icons/heart (1).png",
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "98",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 22),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: Color.fromARGB(181, 242, 182, 160),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/stop-button.png",
                                width: 18,
                                height: 18,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "STOP",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // ---------- Exercise item(s) ----------
                const ExerciseItem(
                  index: "2/8",
                  title: "Bench Press",
                  progress: "3/10",
                  improvement: "6%",
                  time: "4min",
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SmallTag extends StatelessWidget {
  final String text;

  const SmallTag({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 0.906),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
      ),
    );
  }
}
