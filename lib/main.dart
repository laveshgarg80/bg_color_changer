import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var bgColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BG Colour Changer"),
          centerTitle: true,
          toolbarHeight: 100.0,
          backgroundColor: Colors.lightGreenAccent,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Container(
          color: bgColor,
          child: Center(
            child: SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    bgColor = Colors
                        .primaries[Random().nextInt(Colors.primaries.length)];
                  });
                },
                child: const Text(
                  "Tap Me",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
