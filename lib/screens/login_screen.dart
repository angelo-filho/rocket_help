import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/utils/my_colors.dart';
import 'package:rocket_help/widgets/dark_text_field.dart';
import 'package:rocket_help/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void _handlePressButton(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: MyColors.gray[600],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 80, 0, 80),
                    child: Image(
                      image: AssetImage("assets/Logo_Help.png"),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Text(
                      "Acesse sua conta",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: DarkTextField(
                        hintText: "Email",
                        prefixIcon: Icon(PhosphorIcons.regular.envelope)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: DarkTextField(
                      hintText: "Senha",
                      prefixIcon: Icon(PhosphorIcons.regular.key),
                    ),
                  ),
                  PrimaryButton(
                      onTap: () => _handlePressButton(context), text: "Entrar")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
