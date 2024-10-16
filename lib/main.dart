import 'package:flutter/material.dart';
import 'package:hello/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.blueGrey,
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 28, 67, 224),
            Colors.red,
          ],
        ),
      ),
    ),
  );
}
