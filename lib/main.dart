import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> res = [
    'McDonald\'s',
    'Hot n Spiecy',
    'Pizza Hut',
    'Kababjees',
    'Food\'s Inn',
    'Pizza Point'
  ];
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('What do you wanna eat'),
            Text(
              res[currentIndex],
              style: TextStyle(fontSize: 25),
            ),
            Padding(padding: EdgeInsets.all(30)),

            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                updateIndex();
              },
              child: Text(
                'Pick Restaurant',
              ),
              color: Colors.purple,
              textColor: Colors.white,
            )
          ],
        )),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(res.length);
    setState(() {
      currentIndex = index;
    });
  }
}
