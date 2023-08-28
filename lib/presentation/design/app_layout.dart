import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:propresenter_remote/presentation/design/constants/ui_plattform.dart';

final GlobalKey<ScaffoldState> appLayoutKey = GlobalKey();

class AppLayout extends StatelessWidget {
  const AppLayout({super.key, required this.navigationShell});

  /// The current state of the parent StatefulShellRoute
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    List<MenuItem> menuItems = [
      // const MenuItem(
      //   icon: Icon(Icons.home_outlined),
      //   activeIcon: Icon(Icons.home),
      //   label: 'Home',
      //   initialLocation: '/',
      // ),
      const MenuItem(
        icon: Icon(Icons.play_arrow_outlined),
        activeIcon: Icon(Icons.play_arrow),
        label: 'Remote',
        initialLocation: '/remote',
      ),
      const MenuItem(
        icon: Icon(Icons.wifi),
        activeIcon: Icon(Icons.wifi),
        label: 'Config',
        initialLocation: '/config',
      ),
    ];

    return Scaffold(
      key: appLayoutKey,
      body: navigationShell,
      bottomNavigationBar: UiPlatform.isIOS
          ? CupertinoTabBar(
              backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
              activeColor: theme.bottomNavigationBarTheme.selectedItemColor,
              inactiveColor: theme.bottomNavigationBarTheme.unselectedItemColor ?? Colors.white30,
              items: menuItems,
              currentIndex: navigationShell.currentIndex,
              onTap: (int index) => goToTab(context, menuItems, index),
            )
          : BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              enableFeedback: true,
              unselectedFontSize: 14,
              selectedFontSize: UiPlatform.isAndroid ? 15 : 14,
              onTap: (int index) => goToTab(context, menuItems, index),
              currentIndex: navigationShell.currentIndex,
              items: menuItems,
            ),
    );
  }

  void goToTab(BuildContext context, List<MenuItem> menuItems, int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }
}

/// Representation of a navigation menu item
class MenuItem extends BottomNavigationBarItem {
  final String initialLocation;

  const MenuItem({
    required this.initialLocation,
    required Widget icon,
    String? label,
    Widget? activeIcon,
  }) : super(icon: icon, label: label, activeIcon: activeIcon ?? icon);
}
