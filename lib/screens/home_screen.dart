import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/utils/my_colors.dart';

import '../widgets/finished_tab.dart';
import '../widgets/on_going_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.gray[700],
      appBar: AppBar(
        backgroundColor: MyColors.gray[600],
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Solicitações",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                      child: TabBar(
                        labelColor: MyColors.secondary,
                        unselectedLabelColor: MyColors.gray[300],
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: MyColors.secondary),
                          color: MyColors.gray[600],
                        ),
                        tabs: const [
                          Tab(
                            text: "Em andamento",
                          ),
                          Tab(
                            text: "Finalizado",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          OnGoingTab(),
                          FinishedTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
