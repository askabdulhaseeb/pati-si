import 'package:flutter/material.dart';
import 'package:patisi/screens/main_screen/main_screen.dart';
import 'package:provider/provider.dart';

import 'providers/main_bottom_nav_bar_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color _primaryColors = const Color(0xFFFDBD4E);
    Color _secondaryColors = const Color(0xFF2D384C);
    return MultiProvider(
      // ignore: always_specify_types
      providers: [
        ChangeNotifierProvider<MainBottomNavBarProvider>(
          create: (BuildContext context) => MainBottomNavBarProvider(),
        ),
      ],
      child: MaterialApp(
        title: '''Pati'Si''',
        theme: ThemeData(
          primaryColor: _primaryColors,
          colorScheme: ColorScheme(
            primary: _primaryColors,
            primaryVariant: Colors.amber,
            secondary: _secondaryColors,
            secondaryVariant: Colors.black,
            surface: Colors.white,
            background: Colors.white,
            error: Colors.red,
            onPrimary: Colors.amber,
            onSecondary: Colors.deepPurpleAccent,
            onSurface: Colors.white,
            onBackground: Colors.white,
            onError: Colors.redAccent,
            brightness: Brightness.light,
          ),
        ),
        home: const MainScreen(),
        routes: <String, WidgetBuilder>{
          MainScreen.routeName: (_) => const MainScreen(),
        },
      ),
    );
  }
}
