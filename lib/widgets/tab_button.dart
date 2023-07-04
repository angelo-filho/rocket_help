import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.onTap,
    required this.activeColor,
    required this.isActive,
    required this.text,
  });

  final void Function() onTap;
  final Color activeColor;
  final bool isActive;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          backgroundColor: MyColors.gray[600],
          foregroundColor: isActive ? activeColor : MyColors.gray[300],
          side: BorderSide(
            color: isActive ? activeColor : Colors.transparent,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          minimumSize: const Size.fromHeight(0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            text,
            style: const TextStyle(height: 1.6),
          ),
        ),
      ),
    );
  }
}
