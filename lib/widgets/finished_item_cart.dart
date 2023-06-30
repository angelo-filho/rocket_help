import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../utils/my_colors.dart';

class FinishedItemCard extends StatelessWidget {
  const FinishedItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 88,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.gray[600],
        borderRadius: BorderRadius.circular(5),
        border: Border(
          left: BorderSide(color: MyColors.green[500]!, width: 8),
          right: BorderSide(color: MyColors.green[500]!, width: 0),
          top: BorderSide(color: MyColors.green[500]!, width: 0),
          bottom: BorderSide(color: MyColors.green[500]!, width: 0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Patrimônio 147456",
                style: TextStyle(
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
                    "20/01/22 às 14h",
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
              PhosphorIcons.regular.sealCheck,
              color: MyColors.green[500],
            ),
          )
        ],
      ),
    );
  }
}
