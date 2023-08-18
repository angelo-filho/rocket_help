import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/new_solicitation_screen.dart';

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
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const LoginScreen(),
        "/home": (context) => const HomeScreen(),
        "/new_solicitation": (context) => const NewSolicitationScreen(),
      },
    );
  }
}
