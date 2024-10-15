import 'package:flutter/material.dart';
import 'package:jpcode/features/main/widgets/scroll/scroll_cards.dart';

class BalusCard extends StatelessWidget {
  const BalusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollCards(
        child: Transform.scale(
      scale: 0.8,
      child: Image.asset("assets/images/grafs/Ice.cream.png"),
    ));
  }
}
