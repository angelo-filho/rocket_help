import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/models/solicitation_list_model.dart';
import 'package:rocket_help/screens/solicitation_details/widgets/info_input.dart';
import 'package:rocket_help/utils/my_colors.dart';
import 'package:rocket_help/widgets/primary_button.dart';
import 'package:rocket_help/widgets/solicitation_app_bar.dart';

import 'widgets/info_card.dart';

class SolicitationDetailsScreen extends StatefulWidget {
  const SolicitationDetailsScreen({super.key, required this.solicitationIndex});

  final int solicitationIndex;

  @override
  State<SolicitationDetailsScreen> createState() =>
      _SolicitationDetailsScreenState();
}

class _SolicitationDetailsScreenState extends State<SolicitationDetailsScreen> {
  final TextEditingController _solutionController = TextEditingController();

  void _updateSolicitation() {
    solicitations.updateSolicitation(
      widget.solicitationIndex,
      _solutionController.text,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final solicitation = solicitations.values[widget.solicitationIndex];

    final isFinished = solicitation.isFinished;

    final mainColor = isFinished ? MyColors.green[500] : MyColors.secondary;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                      color: mainColor,
                      size: 22,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      isFinished ? "FINALIZADO" : "EM ANDAMENTO",
                      style: TextStyle(
                        color: mainColor,
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
                        content: solicitation.equipment,
                      ),
                      const SizedBox(height: 20),
                      InfoCard(
                        icon: PhosphorIcons.regular.clipboardText,
                        title: "Descrição do problema",
                        content: solicitation.description,
                        date: DateTime.now(),
                      ),
                      const SizedBox(height: 20),
                      isFinished
                          ? InfoCard(
                              icon: PhosphorIcons.regular.sealCheck,
                              title: "Solução",
                              content: solicitation.solution!,
                              date: DateTime.now(),
                            )
                          : InfoInput(controller: _solutionController),
                      const SizedBox(height: 41),
                      if (!isFinished) ...[
                        PrimaryButton(
                          onTap: _updateSolicitation,
                          text: "Finalizar",
                        ),
                        const SizedBox(height: 35),
                      ]
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
