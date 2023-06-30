import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.onTap,
    required this.activeColor,
    required this.isActive,
  });

  final void Function() onTap;
  final Color activeColor;
  final bool isActive;

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
        ),
        child: const Text("Finalizados"),
      ),
    );
  }
}
