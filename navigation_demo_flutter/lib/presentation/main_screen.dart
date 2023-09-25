

import 'package:flutter/material.dart';
import 'package:navigation_demo_flutter/presentation/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.yellow.shade200,
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
                  Icons.star,
                  size: 48,
                )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/mainpage');
                },
            ),
            ListTile(
              leading: Icon(Icons.perm_contact_cal_outlined),
              title: Text('PROFILE'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profilepage');
                },
            ),
            ListTile(
              leading: Icon(Icons.align_vertical_bottom_outlined),
              title: Text('A B O U T'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/aboutpage');
                },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Main Page'),
        backgroundColor: Colors.red.shade300,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profilepage');
          },
          child: Text(
            '누르면 페이지 이동',
            style: TextStyle(fontSize: 38),
          ),
        ),
      )
    );
  }
}
