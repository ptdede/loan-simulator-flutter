import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:loan_simulator/router.dart';
import 'package:loan_simulator/screens/homepage/homepage_screen.dart';
import 'package:loan_simulator/screens/profile/profile_screen.dart';

enum TopLevelBottombarTab {
  home(icon: Icons.home, title: 'Home'),
  profile(icon: Icons.person, title: 'Profile');

  const TopLevelBottombarTab({required this.icon, required this.title});

  final IconData icon;
  final String title;
}

class TopLevelBottombar extends HookWidget {
  const TopLevelBottombar({
    super.key,
    required this.children,
    this.currentIndex = 0,
  });

  final List<Widget> children;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(currentIndex);

    return Scaffold(
      floatingActionButton: IconButton.filled(
        iconSize: 48,
        onPressed: () {
          context.pushNamed(AppRouter.simulation);
        },
        icon: const Icon(Icons.add),
      ),
      body: IndexedStack(
        index: selectedIndex.value,
        children: children,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...TopLevelBottombarTab.values.mapIndexed(
              (index, tab) {
                final isActive = selectedIndex.value == index;

                return InkWell(
                  onTap: () {
                    selectedIndex.value = index;
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          tab.icon,
                          color: isActive ? Colors.blue : Colors.black,
                        ),
                        Text(
                          tab.title,
                          style: TextStyle(
                            color: isActive ? Colors.blue : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GenerateBottombar extends StatelessWidget {
  const GenerateBottombar({super.key, required this.currentTab});

  final TopLevelBottombarTab currentTab;

  int get currentTabIndex => TopLevelBottombarTab.values
      .indexWhere((element) => element == currentTab);

  @override
  Widget build(BuildContext context) {
    return TopLevelBottombar(
      currentIndex: currentTabIndex,
      children: TopLevelBottombarTab.values.map((tab) {
        switch (tab) {
          case TopLevelBottombarTab.home:
            return HomepageScreen();
          case TopLevelBottombarTab.profile:
            return const ProfileScreen();
        }
      }).toList(),
    );
  }
}
