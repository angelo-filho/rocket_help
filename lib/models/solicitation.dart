import '../utils/date_formatter.dart';

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

  String get formattedDateOfRegister => dateFormatter.format(dateOfRegister);
}
