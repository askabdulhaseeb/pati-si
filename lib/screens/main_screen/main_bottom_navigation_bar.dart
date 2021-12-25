import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/main_bottom_nav_bar_provider.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MainBottomNavBarProvider _navBar =
        Provider.of<MainBottomNavBarProvider>(context);
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      selectedIconTheme: Theme.of(context).iconTheme,
      selectedItemColor: Colors.black,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      currentIndex: _navBar.currentTap,
      onTap: (int index) => _navBar.onTabTapped(index),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.location_circle),
          label: 'Missing',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.location),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
