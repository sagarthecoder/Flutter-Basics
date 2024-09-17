import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PromoScreen extends StatefulWidget {
  const PromoScreen({super.key});

  @override
  State<PromoScreen> createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: PageView(
        children: [
          Center(child: Text("1")),
          Center(child: Text("2")),
          Center(child: Text("3")),
        ],
        reverse: false,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
