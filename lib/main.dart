import 'package:flutter/material.dart';

void main() {
  runApp(const JpApp());
}

class JpApp extends StatelessWidget {
  const JpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello JP!'),
        ),
      ),
    );
  }
}
