import 'package:flutter/material.dart';
import 'package:rocket_help/utils/my_colors.dart';
import 'package:rocket_help/widgets/dark_text_field.dart';
import 'package:rocket_help/widgets/primary_button.dart';
import 'package:rocket_help/widgets/solicitation_app_bar.dart';

class NewSolicitationScreen extends StatelessWidget {
  const NewSolicitationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.gray[600],
      appBar: const SolicitationAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DarkTextField(hintText: "Número do Patrimônio"),
              const SizedBox(height: 16),
              const DarkTextField(
                hintText: "Descrição do problema",
                maxLines: 18,
              ),
              const SizedBox(height: 16),
              PrimaryButton(onTap: () {}, text: "Cadastrar"),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
