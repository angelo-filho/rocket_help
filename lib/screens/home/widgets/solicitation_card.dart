import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/models/solicitation_list_model.dart';
import 'package:rocket_help/screens/solicitation_details/solicitation_details_screen.dart';

import '../../../utils/my_colors.dart';

class SolicitationCard extends StatelessWidget {
  const SolicitationCard({
    super.key,
    required this.isFinished,
    required this.index,
  });

  final bool isFinished;
  final int index;

  void goToSolicitationDetails(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              SolicitationDetailsScreen(solicitationIndex: index),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final solicitation = solicitations.values[index];

    final mainColor = isFinished ? MyColors.green[500]! : MyColors.secondary;
    final icon = isFinished
        ? PhosphorIcons.regular.sealCheck
        : PhosphorIcons.regular.clockAfternoon;

    return GestureDetector(
      onTap: () => goToSolicitationDetails(context),
      child: Container(
        width: double.infinity,
        height: 88,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: MyColors.gray[600],
          borderRadius: BorderRadius.circular(5),
          border: Border(
            left: BorderSide(color: mainColor, width: 8),
            right: BorderSide(color: mainColor, width: 0),
            top: BorderSide(color: mainColor, width: 0),
            bottom: BorderSide(color: mainColor, width: 0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Patrimônio ${solicitation.equipment}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      PhosphorIcons.regular.clockAfternoon,
                      size: 16,
                      color: MyColors.gray[300],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      solicitation.formattedDateOfRegister,
                      style: TextStyle(
                        fontSize: 12,
                        color: MyColors.gray[300],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: MyColors.gray[500],
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
