import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded musicelement({Color color, int a}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play('note$a.wav');
          },
          child: Text('click ME'),
        ),
      );
    }

    ;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            musicelement(color: Colors.red, a: 1),
            musicelement(color: Colors.white, a: 2),
            musicelement(color: Colors.green, a: 3),
            musicelement(color: Colors.yellow, a: 4),
            musicelement(color: Colors.blue, a: 5),
            musicelement(color: Colors.amber, a: 6),
            musicelement(color: Colors.cyan, a: 7),
          ],
        )),
      ),
    );
  }
}
