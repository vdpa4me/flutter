import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('About Page'),
          backgroundColor: Colors.red.shade300,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/mainpage');
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
