import '../utils/date_formatter.dart';

class Solicitation {
  Solicitation({
    required this.equipment,
    required this.description,
    required this.dateOfRegister,
  })  : dateWhenFinished = null,
        solution = null;

  Solicitation.withStatusFinished({
    required this.equipment,
    required this.description,
    required this.dateOfRegister,
    required this.dateWhenFinished,
    required this.solution,
  });

  final String equipment;
  final String description;
  final DateTime dateOfRegister;
  DateTime? dateWhenFinished;
  String? solution;

  String get formattedDateOfRegister => dateFormatter.format(dateOfRegister);
  String get formattedDateWhenFinished {
    if (dateWhenFinished == null) {
      return "";
    }

    return dateFormatter.format(dateWhenFinished!);
  }
}
