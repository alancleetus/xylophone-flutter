import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    // audioplayers lib assumes your assets are inside a
    // file called /assets so you don't need absolute path
    player.play('note$i.wav');
  }

  // => are useful when you only have one line of code
  Expanded buildKey({var color, int noteVal}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(noteVal);
          },
          //child: Text('note$noteVal'),
        ),
      );

  /*Expanded buildKey({var color, int noteVal}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteVal);
        },
        //child: Text('note$noteVal'),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, noteVal: 1),
              buildKey(color: Colors.orange, noteVal: 2),
              buildKey(color: Colors.yellow, noteVal: 3),
              buildKey(color: Colors.green, noteVal: 4),
              buildKey(color: Colors.blueGrey, noteVal: 5),
              buildKey(color: Colors.blue, noteVal: 6),
              buildKey(color: Colors.purple, noteVal: 7),
            ],
          ),
        ),
      ),
    );
  }
}
