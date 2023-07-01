import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(56)),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w700, fontSize: 14, color: Colors.white),
      ),
    );
  }
}
