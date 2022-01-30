import 'package:flutter/material.dart';
import 'dart:math';

const int MAX = 6;

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(56, 78, 119, 1),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color.fromRGBO(56, 78, 119, 1),
        ),
        body: SafeArea(
          child: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNum = 1;
  var rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  setLeftAndRight(getRandNumber(MAX, false), getRandNumber(MAX, false));
                });
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  setLeftAndRight(getRandNumber(MAX, false), getRandNumber(MAX, false));
                });
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }

  void setLeftAndRight(int left, int right){
    leftDiceNum = left;
    rightDiceNum = right;
  }

  int getRandNumber(int max, bool zeroInclusive){
      int min = zeroInclusive ? 0 : 1;
      return Random.secure().nextInt(max) + min;
  }
}
