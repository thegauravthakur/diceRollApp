import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: NewBody(),
      ),
    );
  }
}

class NewBody extends StatefulWidget {
  @override
  _NewBodyState createState() => _NewBodyState();
}

class _NewBodyState extends State<NewBody> {
  int leftButton = 6;
  int rightButton = 6;
  void changeNumbers() {
    leftButton = Random().nextInt(6) + 1;
    rightButton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeNumbers();
                  });
                },
                child: Image.asset('images/dice$leftButton.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeNumbers();
                  });
                },
                child: Image.asset('images/dice$rightButton.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
