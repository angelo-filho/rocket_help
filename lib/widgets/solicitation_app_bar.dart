import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../utils/my_colors.dart';

class SolicitationAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SolicitationAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  State<SolicitationAppBar> createState() => _SolicitationAppBarState();

  @override
  final Size preferredSize;
}

class _SolicitationAppBarState extends State<SolicitationAppBar> {
  void _handleBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.gray[600],
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          PhosphorIcons.regular.caretLeft,
          color: Colors.white,
        ),
        onPressed: () => _handleBack(context),
      ),
      title: const Text("Solicitação"),
      titleTextStyle: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      centerTitle: true,
    );
  }
}
