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
}

final solicitationsMock = [
  Solicitation(
    equipment: 'Patrimônio 12345',
    description: "Algo muito sério",
    dateOfRegister: DateTime.now(),
  ),
  Solicitation.withStatusFinished(
    equipment: 'Patrimônio 12345',
    description: "Algo muito sério",
    dateOfRegister: DateTime.now(),
    solution: "É isso ai mermo.",
  ),
  Solicitation.withStatusFinished(
    equipment: 'Patrimônio 12345',
    description: "Algo muito sério",
    dateOfRegister: DateTime.now(),
    solution: "É isso ai mermo.",
  ),
];
