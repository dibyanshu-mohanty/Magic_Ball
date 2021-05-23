import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[900],
        appBar: AppBar(
          title: Center(
            child: Text(
              "I WILL ANSWER EVERYTHING",
              style: TextStyle(
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: MagicBall(),
      ),
  ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber=3;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Center(
              child: Image.asset('images/ball$ballNumber.png'),
            ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5)+1;
                });
              },
              backgroundColor: Colors.lightBlueAccent,
              child: Icon(
                Icons.repeat,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

