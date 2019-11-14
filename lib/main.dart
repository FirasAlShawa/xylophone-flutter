import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int SoundNumber) {
    final player = AudioCache();
    player.play("note$SoundNumber.wav");
  }

  Widget KeyWidget({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              KeyWidget(
                noteNumber: 1,
                color: Colors.red,
              ),
              KeyWidget(
                noteNumber: 2,
                color: Colors.orange,
              ),
              KeyWidget(
                noteNumber: 3,
                color: Colors.yellow,
              ),
              KeyWidget(
                noteNumber: 4,
                color: Colors.green,
              ),
              KeyWidget(
                noteNumber: 5,
                color: Colors.teal,
              ),
              KeyWidget(
                noteNumber: 6,
                color: Colors.blue,
              ),
              KeyWidget(
                noteNumber: 7,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
