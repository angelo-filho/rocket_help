import 'package:flutter/material.dart';
import 'package:rocket_help/utils/my_colors.dart';

class EmptyCalls extends StatelessWidget {
  const EmptyCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 4,
        ),
        Image.asset("assets/symbol.png"),
        const SizedBox(
          height: 24,
        ),
        Text(
          "Você ainda não tem \n chamados criados",
          style: TextStyle(
            color: MyColors.gray[300],
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
