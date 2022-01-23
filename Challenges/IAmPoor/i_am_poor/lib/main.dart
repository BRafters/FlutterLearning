import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        // We need to set the title and color
        title: const Text('I Am Poor'),
        backgroundColor: const Color.fromRGBO(214, 214, 177, 1),
        foregroundColor: const Color.fromRGBO(28, 49, 68, 1),
      ),
      backgroundColor: const Color.fromRGBO(28, 49, 68, 1),
      body: const Center(
        child: Image(
          // Grabbing the image from the assets bundle
          image: AssetImage('images/2462_U1RVRElPIFNNIDIwMTgtMDE.jpg'),
        ),
      )
    ),
  ));
}