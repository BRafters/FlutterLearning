import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int pitch) {
    final player = AudioCache();
    player.play("note$pitch.wav");
  }

  Widget createNoteKey({int pitch, Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(pitch);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createNoteKey(pitch: 1, color: Colors.red[500]),
              createNoteKey(pitch: 2, color: Colors.orange[500]),
              createNoteKey(pitch: 3, color: Colors.yellow[500]),
              createNoteKey(pitch: 4, color: Colors.green[400]),
              createNoteKey(pitch: 5, color: Colors.green[700]),
              createNoteKey(pitch: 6, color: Colors.blue[500]),
              createNoteKey(pitch: 7, color: Colors.purple[500]),
            ],
          ),
        ),
      ),
    );
  }
}
