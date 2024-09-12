import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I am poor'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
        child: Text("Hello"),
        color: Colors.grey[400],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Pressed");
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.pink.shade300,
      ),
    );
  }
}
