import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/screens/solicitation_details/widgets/info_card_header.dart';
import 'package:rocket_help/utils/my_colors.dart';

class InfoInput extends StatelessWidget {
  const InfoInput({super.key, this.controller});

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.gray[600],
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 14),
            child: InfoCardHeader(
              icon: PhosphorIcons.regular.sealCheck,
              title: "Solução",
            ),
          ),
          TextField(
            controller: controller,
            maxLines: 10,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText: "Descrição da solução",
              hintStyle: TextStyle(
                fontSize: 16,
                color: MyColors.gray[300],
              ),
              fillColor: MyColors.gray[600],
              contentPadding: const EdgeInsets.all(16.0),
            ),
          ),
        ],
      ),
    );
  }
}
