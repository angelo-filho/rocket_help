import 'package:flutter/material.dart';

class DarkTextField extends StatelessWidget {
  const DarkTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.maxLines = 1,
    this.keyboardType,
    this.controller,
  });

  final String hintText;
  final int maxLines;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white, height: 1.5),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.all(16),
      ),
      maxLines: maxLines,
      keyboardAppearance: Brightness.dark,
    );
  }
}
