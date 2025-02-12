import 'package:custom_painter/painter/home_painter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey.shade300,
          child: CustomPaint(
            size: const Size(300, 400),
            painter: HomePainter(),
          ),
        ),
      ),
    );
  }
}
