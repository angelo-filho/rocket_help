import 'package:flutter/material.dart';
import 'package:rocket_help/models/solicitation.dart';

class SolicitationListModel with ChangeNotifier {
  final List<Solicitation> _values = <Solicitation>[];
  List<Solicitation> get values => _values.toList();

  void add(Solicitation solicitation) {
    _values.add(solicitation);
    notifyListeners();
  }
}

final solicitations = SolicitationListModel();