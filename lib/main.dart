import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_flutter/modules/StateFull.dart';

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
        title: const Text('I am poor'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: Container(
        width: 300,
        height: 300,
        color: Colors.pinkAccent[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "First column",
              style: TextStyle(
                color: Colors.blue.withOpacity(0.3),
              ),
            ),
            Text(
              "Second column",
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Row item 1",
                  ),
                  Text(
                    "Row item 2",
                  ),
                ],
              ),
            )
          ],
        ),
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
