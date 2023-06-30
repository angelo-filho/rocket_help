import 'package:flutter/material.dart';

import 'on_going_item_cart.dart';

class OnGoingTab extends StatelessWidget {
  const OnGoingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        OnGoingItemCard(),
        SizedBox(
          height: 16,
        ),
        OnGoingItemCard(),
        SizedBox(
          height: 16,
        ),
        OnGoingItemCard(),
      ],
    );
  }
}
