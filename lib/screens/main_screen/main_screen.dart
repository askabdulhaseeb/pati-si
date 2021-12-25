import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/main_bottom_nav_bar_provider.dart';
import 'pages/map_page.dart';
import 'pages/missing_page.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'main_bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String routeName = '/MainScreen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    MissingPage(),
    MapPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    int _currentIndex =
        Provider.of<MainBottomNavBarProvider>(context).currentTap;
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: const MainBottomNavigationBar(),
    );
  }
}
