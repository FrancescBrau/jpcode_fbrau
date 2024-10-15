import 'package:flutter/material.dart';
import 'package:jpcode/features/main/widgets/scroll_recomendations/cards_repository.dart';

class MoglisCard extends StatelessWidget {
  const MoglisCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/singleView');
      },
      child: ScrollCards(
        child: Stack(
          children: [
            Positioned(
              top: -20,
              left: 0,
              right: 0,
              child: Transform.scale(
                scale: 0.7,
                child: Image.asset("assets/images/grafs/cat cupcakes_3D.png"),
              ),
            ),
            const Positioned(
              top: 170,
              left: 15,
              child: Text(
                "Mogli's Cup",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
              top: 190,
              left: 15,
              child: Text(
                "Strawberry ice cream",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ),
            const Positioned(
              top: 230,
              left: 15,
              right: 15,
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
      ),
    );
  }
}
