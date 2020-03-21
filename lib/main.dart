import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
            title: Text('Match the Baby'),
            backgroundColor: Colors.orangeAccent),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Container(
                //color: Colors.black, commented this part bc I tried to add color to the border this way but got a conflicted error.
                decoration: BoxDecoration(border: Border.all()),
                child: Image(
                  width: 200.0,
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Image(
                  width: 200.0,
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ),

//          Container(
//              padding: EdgeInsets.fromLTRB(70, 20, 20, 20),
//              child: Text('hello')),
        ],
      ),
    );
  }
}
