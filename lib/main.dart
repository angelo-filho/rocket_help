import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final MaterialColor greenTheme = const MaterialColor(0xFF00B37E, {
    900: Color(0xFF00875F),
    800: Color(0xFF00875F),
    700: Color(0xFF00875F),
    600: Color(0xFF00B37E),
    500: Color(0xFF00B37E),
    400: Color(0xFF00B37E),
    300: Color(0xFF04D361),
    200: Color(0xFF04D361),
    100: Color(0xFF04D361),
    50: Color(0xFF04D361),
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Color.fromRGBO(0, 0, 0, 0)));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: greenTheme,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: Color(0xFF7C7C8A)),
          prefixIconColor: Color(0xff7C7C8A),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x000000),
              width: 1,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            gapPadding: 0,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color(0xFF00B37E),
            ),
          ),
          filled: true,
          fillColor: Color(0xff121214),
        ),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202024),
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
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: PhosphorIcon(
                        PhosphorIcons.regular.envelope,
                      ),
                    ),
                    keyboardAppearance: Brightness.dark,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: TextField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Senha",
                      prefixIcon: PhosphorIcon(
                        PhosphorIcons.regular.key,
                        semanticLabel: "Chave",
                      ),
                    ),
                    keyboardAppearance: Brightness.dark,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(56)),
                  child: Text(
                    "Entrar",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
