import 'package:flutter/material.dart';
import 'dart:math';

const int MAX_RESPONSES = 5;

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Magic 8 Ball"),
            backgroundColor: Color.fromRGBO(67, 80, 88, 1),
            foregroundColor: Color.fromRGBO(220, 247, 99, 1),
          ),
          body: EightBall(),
          backgroundColor: Color.fromRGBO(132, 140, 142, 1),
        ),
      ),
    );

class EightBall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EightBallState();
  }
}

class _EightBallState extends State<EightBall> {
  int eightBallResponseNum = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            // Randomly generate a number on click
            onPressed: () {
              setState(() {
                eightBallResponseNum =
                    Random.secure().nextInt(MAX_RESPONSES) + 1;
              });
            },
            child: Image.asset('images/ball$eightBallResponseNum.png'),
          ),
        ],
      ),
    );
  }
}
