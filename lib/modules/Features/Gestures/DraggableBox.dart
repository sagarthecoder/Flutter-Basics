import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DraggableBox extends StatefulWidget {
  const DraggableBox({super.key});

  @override
  State<DraggableBox> createState() => _DraggableBoxState();
}

class _DraggableBoxState extends State<DraggableBox> {
  Offset position = Offset(100, 100);
  Offset startDragOffset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pan Gesture Example')),
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
                left: position.dx,
                top: position.dy,
                child: GestureDetector(
                  onPanStart: (details) {
                    // Set the initial offset when drag starts
                    startDragOffset = details.globalPosition - position;
                  },
                  onPanUpdate: (details) {
                    setState(() {
                      print('Delta ${details.delta}');
                      Offset newPosition =
                          details.globalPosition - startDragOffset;

                      // Constrain position within screen bounds
                      double newX =
                          newPosition.dx.clamp(0.0, constraints.maxWidth - 100);
                      double newY = newPosition.dy
                          .clamp(0.0, constraints.maxHeight - 100);

                      position = Offset(newX, newY);
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text("Drag me"),
                    ),
                  ),
                ))
          ],
        );
      }),
    );
  }
}
