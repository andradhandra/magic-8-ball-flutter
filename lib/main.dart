import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[200],
          appBar: AppBar(
            title: Center(
              child: Text('MAGIC 8 BALL'),
            ),
          ),
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int number = 1;
  void numRandomizer () => {
    number = Random().nextInt(5) + 1,
    print("ball number $number")
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () => {
                setState(() => {
                  numRandomizer()
                })
              },
              child: Image.asset('images/ball$number.png')),
          )
        ],
      ),
    );
  }
}
