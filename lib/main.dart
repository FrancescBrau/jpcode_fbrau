import 'package:flutter/material.dart';
import 'package:jpcode/features/start/start_screen.dart';

void main() {
  runApp(const JpApp());
}

class JpApp extends StatelessWidget {
  const JpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JP App',
      theme: ThemeData(fontFamily: 'AfacadFlux'),
      initialRoute: '/start',
      routes: {
        '/start': (context) => const StartScreen(),
        //'/main': (context) => MainScreen(),
        //'/singleView': (context) => SingleViewScreen
      },
    );
  }
}
