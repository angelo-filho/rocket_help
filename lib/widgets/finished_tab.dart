import 'package:flutter/material.dart';

import 'finished_item_cart.dart';

class FinishedTab extends StatelessWidget {
  const FinishedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        FinishedItemCard(),
        SizedBox(
          height: 16,
        ),
        FinishedItemCard(),
      ],
    );
  }
}
