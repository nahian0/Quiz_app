import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Hello"),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: Column(
            children: [
              const Text("button 1"),
              RaisedButton(
                onPressed: null,
                child: Text("button 1"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("button2"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("button3"),
              ),
            ],
          )),
    );
  }
}
