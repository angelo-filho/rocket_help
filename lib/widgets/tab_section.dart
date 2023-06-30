import 'package:flutter/material.dart';

import '../utils/my_colors.dart';
import 'finished_tab.dart';
import 'on_going_tab.dart';
import 'tab_button.dart';

class HomeScreenTabSection extends StatefulWidget {
  const HomeScreenTabSection({super.key});

  @override
  State<HomeScreenTabSection> createState() => _HomeScreenTabSectionState();
}

class _HomeScreenTabSectionState extends State<HomeScreenTabSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();

    _currentIndex = 0;

    _tabController =
        TabController(length: 2, vsync: this, initialIndex: _currentIndex);

    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void changeTabView(int index) {
    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Expanded(
        child: Column(
          children: [
            Row(
              children: [
                TabButton(
                  onTap: () {
                    changeTabView(0);
                  },
                  activeColor: MyColors.secondary,
                  isActive: _currentIndex == 0,
                ),
                const SizedBox(width: 16),
                TabButton(
                  onTap: () {
                    changeTabView(1);
                  },
                  activeColor: MyColors.green[500]!,
                  isActive: _currentIndex == 1,
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  OnGoingTab(),
                  FinishedTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
