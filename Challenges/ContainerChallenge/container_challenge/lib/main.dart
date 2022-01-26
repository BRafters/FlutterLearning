import 'package:flutter/material.dart';

void main() {
  runApp(ContainerApp());
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.deepOrange,
                width: 100,
                height: double.infinity,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                    width: 100.00,
                    height: 100.00,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100.00,
                    height: 100.00,
                  ),
                ],
              ),
              Container(color: Colors.blue, width: 100.00, height: double.infinity,),
            ],
          ),
        ),
      ),
    );
  }
}
