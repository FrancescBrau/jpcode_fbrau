import 'dart:ui';
import 'package:flutter/material.dart';
import 'widgets/order_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/hintergruende/bg_startscreen.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 125,
            left: -12,
            child: Transform.scale(
              scale: 1.1,
              child: Image.asset('assets/images/grafs/poulet.png'),
            ),
          ),
          Positioned(
            bottom: 90,
            child: Image.asset('assets/images/details/T2.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 79, 79, 79)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Feeling Snackish Today?',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Explore Angi's most popular snack selection and get instantly happy.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 40),
                        OrderButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/order');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
