import 'package:flutter/material.dart';
import 'package:rocket_help/models/solicitation.dart';
import 'package:rocket_help/widgets/empty_calls.dart';

import 'solicitation_card.dart';

class SolicitationsList extends StatelessWidget {
  const SolicitationsList({super.key, required this.solicitations});

  final List<Solicitation> solicitations;

  @override
  Widget build(BuildContext context) {
    Widget mainWidget = const EmptyCalls();

    if (solicitations.isNotEmpty) {
      mainWidget = ListView.builder(
        itemCount: solicitations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: index == 0 ? 0 : 16),
            child:
                SolicitationCard(isFinished: solicitations[index].isFinished),
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
