import 'package:flutter/material.dart';
import 'package:navigation_demo_flutter/presentation/profile_screen.dart';

import 'presentation/about_screen.dart';
import 'presentation/main_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigation Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: MainScreen(),
    routes: {
      '/profilepage': (context) => ProfileScreen(),
      '/aboutpage': (context) => AboutScreen(),
      '/mainpage': (context) => MainScreen(),
    }
  ));
}
