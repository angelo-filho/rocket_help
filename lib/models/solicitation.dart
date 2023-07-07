import 'package:intl/intl.dart';

final formatter = DateFormat("dd/MM/yy à's' HH'h'");

class Solicitation {
  Solicitation({
    required this.equipment,
    required this.description,
    required this.dateOfRegister,
  })  : isFinished = false,
        solution = null;

  Solicitation.withStatusFinished({
    required this.equipment,
    required this.description,
    required this.dateOfRegister,
    required this.solution,
  }) : isFinished = true;

  final String equipment;
  final String description;
  final DateTime dateOfRegister;
  final bool isFinished;
  final String? solution;

  String get formattedDateOfRegister => formatter.format(dateOfRegister);
}
