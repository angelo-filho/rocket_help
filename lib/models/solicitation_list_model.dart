import 'package:flutter/material.dart';
import 'package:rocket_help/models/solicitation.dart';

class SolicitationListModel with ChangeNotifier {
  final List<Solicitation> _values = <Solicitation>[];
  List<Solicitation> get values => _values.toList();

  Solicitation getSolicitationById(String id) {
    return _values.singleWhere((solicitation) => solicitation.id == id);
  }

  void add(Solicitation solicitation) {
    _values.add(solicitation);
    notifyListeners();
  }

  void updateSolicitation(String id, String solution) {
    var targetSolutionIndex =
        _values.indexWhere((solicitation) => solicitation.id == id);

    _values[targetSolutionIndex].dateWhenFinished = DateTime.now();
    _values[targetSolutionIndex].solution = solution;
    notifyListeners();
  }
}

final solicitations = SolicitationListModel();
