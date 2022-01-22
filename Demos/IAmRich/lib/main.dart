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
            image: NetworkImage(
                'https://images.unsplash.com/photo-1534353436294-0dbd4bdac845?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
          ),
        ),
      ),
    ),
  );
}
