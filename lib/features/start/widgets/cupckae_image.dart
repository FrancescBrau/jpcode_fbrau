import 'package:flutter/material.dart';

class CupcakeImage extends StatelessWidget {
  const CupcakeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/grafs/poulet.png',
      width: 400,
      height: 400,
    );
  }
}
