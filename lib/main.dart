import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  TextButton buildKey({Color color, int soundNumber, String text}) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: color,
        padding: const EdgeInsets.all(50.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Colors.white)
        )
      ),
      onPressed: () {
        playSound(soundNumber);
      },
      child: Text(
        '$text',
        style: TextStyle(fontSize: 50),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildKey(color: Colors.red, soundNumber: 1, text: 'A'),
                  SizedBox(
                    height: 30,
                  ),
                  buildKey(color: Colors.orange, soundNumber: 2, text: 'B'),
                  /*buildKey(color: Colors.yellow, soundNumber: 3),
                  buildKey(color: Colors.green, soundNumber: 4),
                  buildKey(color: Colors.teal, soundNumber: 5),
                  buildKey(color: Colors.blue, soundNumber: 6),
                  buildKey(color: Colors.purple, soundNumber: 7),
                */
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildKey(color: Colors.blue, soundNumber: 2, text: 'C'),
                  SizedBox(
                    height: 30,
                  ),
                  buildKey(color: Colors.purple, soundNumber: 3, text: 'D'),
                  /*buildKey(color: Colors.green, soundNumber: 4),
                  buildKey(color: Colors.teal, soundNumber: 5),
                  buildKey(color: Colors.blue, soundNumber: 6),
                  buildKey(color: Colors.purple, soundNumber: 7),
                  buildKey(color: Colors.red, soundNumber: 1),
                */
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
