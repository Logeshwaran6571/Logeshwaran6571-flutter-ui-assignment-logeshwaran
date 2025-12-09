import 'package:flutter/material.dart';
import 'colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Icon(
            Icons.arrow_back,
            size: 22,
            color: AppColors.primary,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star_border_rounded,
                size: 20,
                color: AppColors.primary,
              ),
              SizedBox(width: 12),
              Icon(Icons.edit_outlined, size: 20, color: AppColors.primary),
              SizedBox(width: 12),
              Icon(Icons.more_horiz, size: 20, color: AppColors.primary),
            ],
          ),
        ),
      ],
    );
  }
}
