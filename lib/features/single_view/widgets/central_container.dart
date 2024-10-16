import 'dart:ui';
import 'package:flutter/material.dart';

class CentralCard extends StatelessWidget {
  const CentralCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
            child: Container(
              height: 340,
              width: 350,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 79, 79, 79).withOpacity(0.1),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white70.withOpacity(0.2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Mogli's Cup",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "₳ 8.99",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  )
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          top: 250,
          left: 42,
          child: Text(
            'Ingredients',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        const Positioned(
          top: 275,
          left: 42,
          child: IconTheme(
            data: IconThemeData(color: Colors.grey),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.no_food),
                SizedBox(width: 2),
                Icon(Icons.ac_unit),
                SizedBox(width: 2),
                Icon(Icons.emoji_food_beverage),
                SizedBox(width: 2),
                Icon(Icons.local_fire_department),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 250,
          left: 222,
          child: Text(
            'Reviews',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        const Positioned(
          top: 275,
          left: 220,
          child: IconTheme(
            data: IconThemeData(color: Colors.grey),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star),
                SizedBox(width: 2),
                Icon(Icons.star),
                SizedBox(width: 2),
                Icon(Icons.star),
                SizedBox(width: 2),
                Icon(Icons.star),
                SizedBox(width: 2),
                Icon(Icons.star_border)
              ],
            ),
          ),
        ),
        const Positioned(
            top: 12,
            left: 310,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.white70,
                  size: 16,
                ),
                SizedBox(width: 2),
                Text(
                  '200',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ))
      ],
    );
  }
}
