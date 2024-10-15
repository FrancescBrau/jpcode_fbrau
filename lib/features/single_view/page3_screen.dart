import 'package:flutter/material.dart';

class SingleViewScreen extends StatefulWidget {
  const SingleViewScreen({super.key});

  @override
  State<SingleViewScreen> createState() => _SingleViewScreenState();
}

class _SingleViewScreenState extends State<SingleViewScreen> {
  @override
  build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/hintergruende/bg_mainscreen.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        )
      ]),
    );
  }
}
