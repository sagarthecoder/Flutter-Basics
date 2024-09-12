import 'dart:ui';

import 'package:flutter/material.dart';

class Counting extends StatefulWidget {
  @override
  State<Counting> createState() => _CountingState();
}

class _CountingState extends State<Counting> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          count += 1;
        });
      },
      child: Text('Count value = $count'),
    );
  }
}
