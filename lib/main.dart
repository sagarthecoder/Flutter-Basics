import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello_flutter/modules/Features/Gestures/DraggableBox.dart';
import 'package:hello_flutter/modules/Features/Inspiration/Views/InspirationHomeScreen.dart';
import 'package:hello_flutter/modules/Features/OnBoarding/Views/PromoScreen.dart';
import 'package:hello_flutter/modules/StateFull.dart';

void main() {
  runApp(
    MaterialApp(
      home: DraggableBox(),
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
      body: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 10; i++)
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueGrey,
                          ),
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.only(right: 20),
                          child: Center(
                            child: Text(
                              'Row $i',
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                for (int i = 0; i < 30; i++)
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.redAccent,
                    margin: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        'Column $i',
                      ),
                    ),
                  )
              ],
            )),
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
