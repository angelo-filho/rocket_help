import 'package:flutter/material.dart';
import 'package:rocket_help/models/solicitation.dart';
import 'package:rocket_help/models/solicitation_list_model.dart';
import 'package:rocket_help/utils/my_colors.dart';
import 'package:rocket_help/widgets/dark_text_field.dart';
import 'package:rocket_help/widgets/primary_button.dart';
import 'package:rocket_help/widgets/solicitation_app_bar.dart';

class NewSolicitationScreen extends StatefulWidget {
  const NewSolicitationScreen({super.key});

  @override
  State<NewSolicitationScreen> createState() => _NewSolicitationScreenState();
}

class _NewSolicitationScreenState extends State<NewSolicitationScreen> {
  final _numberController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _numberController.dispose();
    _descriptionController.dispose();
  }

  void addSolicitation() {
    solicitations.add(
      Solicitation(
        equipment: _numberController.text,
        description: _descriptionController.text,
        dateOfRegister: DateTime.now(),
      ),
    );

    Navigator.pop(context);
  }

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
              DarkTextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                hintText: "Número do Patrimônio",
              ),
              const SizedBox(height: 16),
              DarkTextField(
                controller: _descriptionController,
                hintText: "Descrição do problema",
                maxLines: 18,
              ),
              const SizedBox(height: 16),
              PrimaryButton(onTap: addSolicitation, text: "Cadastrar"),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
