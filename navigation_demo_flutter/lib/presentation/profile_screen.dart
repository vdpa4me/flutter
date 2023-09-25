import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text('Profile Page'),
          backgroundColor: Colors.red.shade300,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/aboutpage');
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
