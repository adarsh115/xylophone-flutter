
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sn) {
    final player = AudioCache();
    player.play('note$sn.wav');
  }

  Expanded buildkey({Color color, int sn}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sn);
        },
        child: Text('-'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, sn: 7),
              buildkey(color: Colors.orange, sn: 6),
              buildkey(color: Colors.yellow, sn: 5),
              buildkey(color: Colors.green, sn: 4),
              buildkey(color: Colors.blue, sn: 3),
              buildkey(color: Colors.indigo, sn: 2),
              buildkey(color: Colors.purple, sn: 1),

            ],
          ),
        ),
      ),
    );
  }
}
