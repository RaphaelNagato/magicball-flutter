import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text("Ask me anything"),
            backgroundColor: Colors.green[800],
          ),
          body: Container(
            child: MagicBall(),
          ),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballValue = 1;

  void magicBallAnswer() {
    setState(() {
      ballValue = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () => magicBallAnswer(),
              child: Image.asset('images/ball$ballValue.png'),
            ),
          )
        ],
      ),
    );
  }
}
