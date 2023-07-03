import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/utils/my_colors.dart';
import 'package:rocket_help/widgets/dark_text_field.dart';
import 'package:rocket_help/widgets/primary_button.dart';

class NewSolicitationScreen extends StatelessWidget {
  const NewSolicitationScreen({super.key});

  void _handleBackToHome(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.gray[600],
      appBar: AppBar(
        backgroundColor: MyColors.gray[600],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            PhosphorIcons.regular.caretLeft,
            color: Colors.white,
          ),
          onPressed: () => _handleBackToHome(context),
        ),
        title: const Text("Solicitação"),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
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
