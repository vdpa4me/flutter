import 'package:flutter/material.dart';
import 'dart:math';

class DiceMainPage extends StatefulWidget {
  DiceMainPage({super.key});

  @override
  State<DiceMainPage> createState() => _DiceMainPageState();
}

class _DiceMainPageState extends State<DiceMainPage> {

  int _firstDiceNumber = 2;
  int _scondDiceNumber = 5;

  // method .. change state
  void _rollDice() {
    setState(() {
      Random random = Random();
      _firstDiceNumber = random.nextInt(6) + 1;
      _scondDiceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('주사위 굴리기'),
        elevation: 1,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Image.asset('assets/images/dice$_firstDiceNumber.png'),
                  onTap: _rollDice,
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Image.asset('assets/images/dice$_scondDiceNumber.png'),
                  onTap: _rollDice,
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      )
    );
  }
}
