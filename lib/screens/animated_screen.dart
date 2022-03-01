import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _with = 100;
  double _height = 100;
  Color _color = Colors.red;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final random = Random();

    _with = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Screen"),
      ),
      body: Center(
          child: AnimatedContainer(
        height: _height,
        width: _with,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: _color,
        ),
        duration: const Duration(milliseconds: 500),
        curve: Curves.bounceIn,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
