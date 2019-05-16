import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //final colorList = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.indigo, Colors.purple];

  Widget singleAudioButton({Color color, int audionumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$audionumber.wav');
        },
        child: null,
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
              singleAudioButton(color: Colors.red, audionumber: 1),
              singleAudioButton(color: Colors.orange, audionumber: 2),
              singleAudioButton(color: Colors.yellow, audionumber: 3),
              singleAudioButton(color: Colors.green, audionumber: 4),
              singleAudioButton(color: Colors.blue, audionumber: 5),
              singleAudioButton(color: Colors.indigo, audionumber: 6),
              singleAudioButton(color: Colors.purple, audionumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
