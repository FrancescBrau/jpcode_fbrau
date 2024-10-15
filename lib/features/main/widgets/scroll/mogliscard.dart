import 'package:flutter/material.dart';
import 'package:jpcode/features/main/widgets/scroll/scroll_cards.dart';

class MoglisCard extends StatelessWidget {
  const MoglisCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollCards(
      child: Stack(
        children: [
          Transform.scale(
            scale: 0.8,
            child: Image.asset("assets/images/grafs/cat cupcakes_3D.png"),
          ),
          const Positioned(
            top: 170,
            left: 10,
            child: Text(
              "Mogli's Cup",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const Positioned(
            top: 185,
            left: 10,
            child: Text(
              "Strawberry ice cream",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Positioned(
            top: 190,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "₳ 8.99",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 16),
                    SizedBox(width: 5),
                    Text(
                      "200",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
