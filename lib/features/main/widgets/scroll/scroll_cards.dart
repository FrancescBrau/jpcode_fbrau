import 'package:flutter/material.dart';

const double cardWidth = 195;
const double cardHeight = 270;
const BorderRadius cardBorderRadius = BorderRadius.all(Radius.circular(30));

class ScrollCards extends StatelessWidget {
  final Widget child;

  const ScrollCards({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(153, 3, 168, 244),
            Color.fromARGB(125, 155, 39, 176),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: cardBorderRadius,
        border: Border.all(
          color: Colors.white70,
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          child,
        ],
      ),
    );
  }
}
