import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  color: Colors.red,
                    onPressed: () {
                      playSound(1);
                    },
                ),
              ),
              Expanded(
                child: RaisedButton(
                    color: Colors.orange,
                    onPressed: () {
                      playSound(2);
                    },
                ),
              ),
              Expanded(
                child: RaisedButton(
                    color: Colors.yellow,
                    onPressed: () {
                      playSound(3);
                    },
                   ),
              ),
              Expanded(
                child: RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      playSound(4);
                    },
                    ),
              ),
              Expanded(
                child: RaisedButton(
                    color: Colors.blueGrey,
                    onPressed: () {
                      playSound(5);
                    },
                    ),
              ),
              Expanded(
                child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      playSound(6);
                    },
                   ),
              ),
              Expanded(
                child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {
                      playSound(7);
                    },
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
