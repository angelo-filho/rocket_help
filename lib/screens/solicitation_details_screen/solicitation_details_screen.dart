import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/screens/solicitation_details_screen/widgets/info_input.dart';
import 'package:rocket_help/utils/my_colors.dart';
import 'package:rocket_help/widgets/primary_button.dart';
import 'package:rocket_help/widgets/solicitation_app_bar.dart';

import 'widgets/info_card.dart';

class SolicitationDetailsScreen extends StatelessWidget {
  const SolicitationDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SolicitationAppBar(),
      backgroundColor: MyColors.gray[700],
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: MyColors.gray[500]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    PhosphorIcons.bold.hourglass,
                    color: MyColors.secondary,
                    size: 22,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "EM ANDAMENTO",
                    style: TextStyle(
                      color: MyColors.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InfoCard(
                      icon: PhosphorIcons.regular.desktopTower,
                      title: "Equipamento",
                      content: "Pratimônio 123456",
                    ),
                    const SizedBox(height: 20),
                    InfoCard(
                      icon: PhosphorIcons.regular.clipboardText,
                      title: "Descrição do problema",
                      content:
                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      date: DateTime.now(),
                    ),
                    const SizedBox(height: 20),
                    const InfoInput(),
                    const SizedBox(height: 41),
                    PrimaryButton(
                      onTap: () {},
                      text: "Finalizar",
                    ),
                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
