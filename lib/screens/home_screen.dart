import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/utils/my_colors.dart';
import 'package:rocket_help/widgets/primary_button.dart';

import '../widgets/tab_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _handleGoToNewTransaction(BuildContext context) {
    Navigator.pushNamed(context, "/new_solicitation");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.gray[700],
      appBar: AppBar(
        backgroundColor: MyColors.gray[600],
        elevation: 0,
        title: Image.asset(
          "assets/Logo_Help_Row.png",
          width: 128,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/");
            },
            tooltip: "Sair",
            icon: Icon(
              PhosphorIcons.regular.signOut,
              color: MyColors.gray[300],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Solicitações",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const HomeScreenTabSection(),
            const SizedBox(height: 16),
            PrimaryButton(
                onTap: () => _handleGoToNewTransaction(context),
                text: "Nova solicitação"),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
