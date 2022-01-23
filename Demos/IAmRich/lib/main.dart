import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // Most projects start off with 'MaterialApp' as the first widget
      // home: is where all of the content starts
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I Am Rich'),
          foregroundColor: const Color.fromRGBO(242, 233, 220, 1),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: const Color.fromRGBO(242, 233, 220, 1),
        body: const Center(
          child: Image(
            image: AssetImage(
              'images/fly-d-yWKP_Fz0Tks-unsplash.jpeg'
            ),
          ),
        ),
      ),
    ),
  );
}
