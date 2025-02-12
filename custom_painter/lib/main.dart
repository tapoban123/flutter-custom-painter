import 'package:custom_painter/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CustomPainterTutorial());
}


class CustomPainterTutorial extends StatelessWidget {
  const CustomPainterTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Painter Tutorial",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const HomePage(),
    );
  }
}