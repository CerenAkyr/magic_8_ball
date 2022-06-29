import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        title: Text("Derdine Derman"),
        backgroundColor: Colors.cyan[900],
      ),
      body: BallArea(),
    );
  }
}

class BallArea extends StatefulWidget {
  const BallArea({Key? key}) : super(key: key);

  @override
  State<BallArea> createState() => _BallAreaState();
}

class _BallAreaState extends State<BallArea> {
  void randomizer() {
    randomVal = Random().nextInt(5) + 1;
  }
  int randomVal = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState( () {
              randomizer();
            } );
            print(randomVal);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("images/ball$randomVal.png"),
          ),
        ),
      ),
    );
  }
}
