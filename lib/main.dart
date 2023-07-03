import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rocket_help/screens/home_screen.dart';
import 'package:rocket_help/screens/login_screen.dart';
import 'package:rocket_help/screens/new_solicitation_screen.dart';

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
      routes: {
        "/": (context) => const LoginScreen(),
        "/home": (context) => const HomeScreen(),
        "/new_solicitation": (context) => const NewSolicitationScreen(),
      },
    );
  }
}
