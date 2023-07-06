import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/utils/my_colors.dart';
import 'package:rocket_help/widgets/primary_button.dart';
import 'package:rocket_help/screens/home/widgets/filter_button.dart';

import '../../models/solicitation.dart';
import 'widgets/solicitation_list.dart';

enum SolicitationFilter {
  None,
  NotFinished,
  Finished,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Solicitation> solicitations = solicitationsMock;
  SolicitationFilter filter = SolicitationFilter.None;

  List<Solicitation> get filteredSolicitations {
    if (filter == SolicitationFilter.NotFinished) {
      return solicitations
          .where((solicitation) => !solicitation.isFinished)
          .toList();
    }

    return solicitations
        .where((solicitation) => solicitation.isFinished)
        .toList();
  }

  void _handleGoToNewTransaction(BuildContext context) {
    Navigator.pushNamed(context, "/new_solicitation");
  }

  void toggleFilterType(SolicitationFilter newFilterType) {
    if (filter == newFilterType) {
      setState(() {
        filter = SolicitationFilter.None;
      });

      return;
    }

    setState(() {
      filter = newFilterType;
    });
  }

  @override
  Widget build(BuildContext context) {
    final solicitationsToUse = filter == SolicitationFilter.None
        ? solicitations
        : filteredSolicitations;

    return Scaffold(
      backgroundColor: MyColors.gray[700],
      appBar: AppBar(
        backgroundColor: MyColors.gray[600],
        elevation: 0,
        title: Image.asset(
          "assets/Logo_Help_Row.png",
          width: 128,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/");
            },
            tooltip: "Sair",
            icon: Icon(
              PhosphorIcons.regular.signOut,
              color: MyColors.gray[300],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Solicitações",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${solicitationsToUse.length}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                FilterButton(
                  onTap: () => toggleFilterType(SolicitationFilter.NotFinished),
                  activeColor: MyColors.secondary,
                  isActive: filter == SolicitationFilter.NotFinished,
                  text: "Em andamento",
                ),
                const SizedBox(width: 16),
                FilterButton(
                  onTap: () => toggleFilterType(SolicitationFilter.Finished),
                  activeColor: MyColors.green[500]!,
                  isActive: filter == SolicitationFilter.Finished,
                  text: "Finalizados",
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            SolicitationsList(solicitations: solicitationsToUse),
            const SizedBox(height: 16),
            PrimaryButton(
                onTap: () => _handleGoToNewTransaction(context),
                text: "Nova solicitação"),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
