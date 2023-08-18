import 'package:flutter/material.dart';
import 'package:rocket_help/models/solicitation.dart';
import 'package:rocket_help/screens/home/home_screen.dart';
import 'package:rocket_help/screens/home/widgets/empty_calls.dart';

import 'solicitation_card.dart';

const Map<SolicitationFilter, String> emptyErrorMessage = {
  SolicitationFilter.none: "Você ainda não tem \n chamados criados",
  SolicitationFilter.finished: "Você não tem \n chamados finalizados",
  SolicitationFilter.notFinished: "Você não tem \n chamados em andamento",
};

class SolicitationsList extends StatelessWidget {
  const SolicitationsList(
      {super.key, required this.solicitations, required this.filterType});

  final List<Solicitation> solicitations;
  final SolicitationFilter filterType;

  @override
  Widget build(BuildContext context) {
    Widget mainWidget = EmptyCalls(
      message: emptyErrorMessage[filterType]!,
    );

    if (solicitations.isNotEmpty) {
      mainWidget = ListView.builder(
        itemCount: solicitations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: index == 0 ? 0 : 16),
            child: SolicitationCard(id: solicitations[index].id),
          );
        },
      );
    }

    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: mainWidget,
          ),
        ],
      ),
    );
  }
}
