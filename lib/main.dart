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
        appBar: AppBar(
          title: Text('Xylophone'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[400],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                ),
                RaisedButton(
                  color: Colors.red,
                    onPressed: () {
                      playSound(1);
                    },
                    child: Text('Play Note 1')),
                RaisedButton(
                    color: Colors.orange,
                    onPressed: () {
                      playSound(2);
                    },
                    child: Text('Play Note 2')),
                RaisedButton(
                    color: Colors.yellow,
                    onPressed: () {
                      playSound(3);
                    },
                    child: Text('Play Note 3')),
                RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      playSound(4);
                    },
                    child: Text('Play Note 4')),
                RaisedButton(
                    color: Colors.blueGrey,
                    onPressed: () {
                      playSound(5);
                    },
                    child: Text('Play Note 5')),
                RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      playSound(6);
                    },
                    child: Text('Play Note 6')),
                RaisedButton(
                    color: Colors.purple,
                    onPressed: () {
                      playSound(7);
                    },
                    child: Text('Play Note 7')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
