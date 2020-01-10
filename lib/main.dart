import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        )),
      ),
    );
  }
}

void playSound(int soundNum) {
  final player = AudioCache();
  player.play('note$soundNum.wav');
}

Expanded buildKey(Color color, int soundNum) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(soundNum);
      },
    ),
  );
}
