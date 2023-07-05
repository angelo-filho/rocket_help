import 'package:flutter/material.dart';
import 'package:rocket_help/utils/my_colors.dart';

class InfoCardHeader extends StatelessWidget {
  const InfoCardHeader({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: MyColors.primary,
          size: 20,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: MyColors.gray[300],
          ),
        )
      ],
    );
  }
}
