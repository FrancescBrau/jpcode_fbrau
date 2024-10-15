import 'package:flutter/material.dart';
import 'package:jpcode/features/main/main_screen.dart';
import 'package:jpcode/features/single_view/page3_screen.dart';
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
      initialRoute: '/singleView',
      routes: {
        '/': (context) => const StartScreen(),
        '/main': (context) => const HomeScreen(),
        '/singleView': (context) => const SingleViewScreen(),
      },
    );
  }
}
