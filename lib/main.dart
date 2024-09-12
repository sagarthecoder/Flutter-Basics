import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I am poor 2'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: IconButton(
            onPressed: () {
              print("you clicked me");
            },
            color: Colors.red,
            icon: Icon(Icons.mail)),
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
