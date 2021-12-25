import 'package:flutter/material.dart';
import 'package:patisi/screens/main_screen/main_bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String routeName = '/MainScreen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Main Screen'),
      ),
      bottomNavigationBar: MainBottomNavigationBar(),
    );
  }
}
