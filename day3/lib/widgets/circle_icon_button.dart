import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;

  const CircleIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.black87, size: 20),
    );
  }
}
