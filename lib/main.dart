import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    AudioPlayer().play(AssetSource('note$sound.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                    child: Text('Button 1'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        playSound(2);
                      },
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.yellow),
                      child: Text('Button 2')),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    child: Text('Button 3'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    child: Text('Button 4'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.purple),
                    child: Text('Button 5'),
                  ),
                ),
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          playSound(6);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Text('Button 6'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
