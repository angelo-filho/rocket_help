import 'package:flutter/material.dart';
import 'package:rocket_help/screens/solicitation_details_screen/widgets/info_card_header.dart';
import 'package:rocket_help/utils/my_colors.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.content,
    this.date,
  });

  final IconData icon;
  final String title;
  final String content;
  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyColors.gray[600], borderRadius: BorderRadius.circular(5.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoCardHeader(icon: icon, title: title),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(
                  color: Colors.white, fontSize: 16, height: 1.6),
            ),
            if (date != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Divider(
                      color: MyColors.gray[300],
                    ),
                  ),
                  Text(
                    "Registrado em 20/11/2022 às 14:30",
                    style: TextStyle(
                      color: MyColors.gray[300],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
