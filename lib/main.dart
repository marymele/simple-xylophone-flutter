import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey(int soundNumber, MaterialColor color){

    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(color),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('My Xylophone',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Satisfy',
            )),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(1,Colors.red),
              buildKey(2,Colors.orange ),
              buildKey(3,Colors.yellow),
              buildKey(4,Colors.green),
              buildKey(5,Colors.teal),
              buildKey(6,Colors.blue),
              buildKey(7,Colors.purple),

            ]),
      ),
    ));
  }
}
