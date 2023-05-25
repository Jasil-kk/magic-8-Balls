import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState(
  );
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
void handleClick() {
  setState(() {
    ballNumber = Random().nextInt(5) + 1;
    print('clicked number $ballNumber');
  });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
            onPressed: () {
              handleClick();
            },
            child: Image(
              image: AssetImage('images/ball$ballNumber.png'),
            )),
      ),
    );
  }
}
