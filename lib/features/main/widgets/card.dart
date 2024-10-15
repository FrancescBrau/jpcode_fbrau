import 'dart:ui';
import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  const BurgerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              width: 400,
              height: 290,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        Container(
          width: 400,
          height: 290,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey, width: 1),
          ),
        ),
        Positioned(
          top: -55,
          left: 28,
          child: Transform.scale(
            scale: 0.5,
            child: Image.asset('assets/images/grafs/burger.png'),
          ),
        ),
        const Positioned(
          top: 20,
          left: 20,
          child: const Text(
            "Angi's Yummy Burger",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          top: 45,
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
          top: 90,
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
          top: 25,
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
          top: 180,
          left: 20,
          child: Container(
            width: 120,
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
                    fontSize: 16,
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
