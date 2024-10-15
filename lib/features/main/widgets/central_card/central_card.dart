import 'dart:ui';
import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  const BurgerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 400,
          height: 290,
        ),
        Positioned(
          top: -75,
          left: 28,
          child: Transform.scale(
            scale: 0.5,
            child: Image.asset('assets/images/grafs/burger.png'),
          ),
        ),
        const Positioned(
          top: 15,
          left: 20,
          child: Text(
            "Angi's Yummy Burger",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          top: 40,
          left: 20,
          child: Text(
            "Delish vegan burger  \nthat tastes like heaven ",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ),
        const Positioned(
          top: 85,
          left: 20,
          child: Text(
            '₳ 13.99',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          top: 20,
          left: 280,
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.pinkAccent, size: 18),
              Text(
                ' 4.8',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 150,
          left: 30,
          child: Container(
            width: 90,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [Colors.purpleAccent, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ],
              border: Border.all(
                color: Colors.white60,
                width: 1,
              ),
            ),
            child: const Center(
              child: Text('Add to order',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
      ],
    );
  }
}
