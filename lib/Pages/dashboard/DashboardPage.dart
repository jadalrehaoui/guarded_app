import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guarded/Pages/dashboard/AccountPage.dart';
import 'package:guarded/Pages/dashboard/HomePage.dart';
import 'package:guarded/Pages/dashboard/PlansPage.dart';
import 'package:guarded/Pages/dashboard/SectionsPage.dart';
import 'package:guarded/routes/routes.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(context),
      backgroundColor: Colors.white10,
      
    );
  }
}

 List<Widget> _buildScreens() {
  return [
    HomePage(),
    SectionsPage(),
    PlansPage(),
    AccountPage(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
        return [
            PersistentBottomNavBarItem(
                icon: Icon(Icons.dashboard_outlined),
                title: ("Dashboard"),
                activeColorPrimary: Theme.of(context).primaryColor,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(Icons.filter_list),
                title: ("Sections"),
                activeColorPrimary: Theme.of(context).primaryColor,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(Icons.card_membership_outlined),
                title: ("Plans"),
                activeColorPrimary: Theme.of(context).primaryColor,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(Icons.tune),
                title: ("Settings"),
                activeColorPrimary: Theme.of(context).primaryColor,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
        ];
    }


// return AutoTabsScaffold(
//       routes: const [
//         HomeRoute(),
//         SectionsRoute(),
//       ],
//       bottomNavigationBuilder: (_, tabsRouter) {
//         return BottomNavigationBar(
//           currentIndex: tabsRouter.activeIndex,
//           onTap: tabsRouter.setActiveIndex,
//           items: [
//             //
//             BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
//             BottomNavigationBarItem(label: "Sections", icon: Icon(Icons.list))
//           ]
//         );
//       },
//     );