import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:rocket_help/models/solicitation.dart';
import 'package:rocket_help/models/solicitation_list_model.dart';

import 'app.dart';

void main() async {
  Intl.defaultLocale = "pt_BR";
  initializeDateFormatting("pt_BR");

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  solicitations.add(
    Solicitation(
        equipment: "12345",
        description: "Descrição top das galáxias",
        dateOfRegister: DateTime.utc(2023, 3, 6, 13)),
  );

  solicitations.add(
    Solicitation.withStatusFinished(
        equipment: "54321",
        description: "Deu ruim aqui menor",
        dateOfRegister: DateTime.utc(2023, 4, 17, 8),
        dateWhenFinished: DateTime.utc(2023, 5, 1, 11),
        solution: "É complicado isso ai..."),
  );

  solicitations.add(
    Solicitation(
        equipment: "678910",
        description: "A impressora não tá pegando!",
        dateOfRegister: DateTime.utc(2023, 6, 1, 17)),
  );

  runApp(const MyApp());
}
